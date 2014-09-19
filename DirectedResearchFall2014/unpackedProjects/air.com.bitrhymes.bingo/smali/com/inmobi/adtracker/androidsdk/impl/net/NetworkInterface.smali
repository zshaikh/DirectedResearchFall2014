.class public Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

.field public static isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static lastUploadStatus:Z

.field public static mainHandler:Landroid/os/Handler;

.field public static networkThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->c()Z

    move-result v0

    return v0
.end method

.method private static c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v0, "IMAdTrackerStatusUpload"

    .line 245
    :try_start_0
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "timetoLive"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/IMFileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v3, "iat_ids"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/IMFileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 248
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 249
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 251
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move v0, v4

    .line 269
    :goto_0
    return v0

    .line 255
    :cond_1
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 256
    const/16 v3, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 257
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v4

    .line 269
    goto :goto_0
.end method

.method public static deinit()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->saveGoals()V

    .line 48
    :cond_0
    return-void
.end method

.method public static init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-direct {v0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;-><init>()V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    .line 32
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->getLoggedGoals()Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    move-result-object v0

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    .line 34
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->mainHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 42
    return-void
.end method

.method public static reportOnConnected()V
    .locals 4

    .prologue
    .line 277
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "appId"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/IMFileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getAndroidIdMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 281
    sget-object v3, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    if-eqz v3, :cond_0

    .line 283
    sget-object v3, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v3}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->getLoggedGoals()Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    .line 285
    :cond_0
    if-eqz v0, :cond_1

    sget-object v3, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v3}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 287
    invoke-static {v0, v1, v2}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->reportToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    .line 289
    :cond_1
    return-void
.end method

.method public static declared-synchronized reportToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    .line 95
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 96
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 99
    :cond_0
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static reportUsingNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/32 v4, 0xa4cb80

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const-string v0, "download"

    const-string v7, "IMAdTrackerSDK_V_2_5_1"

    .line 105
    .line 107
    :try_start_0
    sget-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    if-eqz v0, :cond_1

    move-wide v0, v2

    .line 112
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 114
    const-string v2, "IMAdTrackerSDK_V_2_5_1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Retrying goalname: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    sget-object v2, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 116
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v1, "Network Unavailable !!!"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 127
    invoke-static {p3, p4}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->increaseRetryTime(Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    :goto_1
    return-void

    .line 110
    :cond_1
    cmp-long v0, p5, v4

    if-lez v0, :cond_8

    move-wide v0, v4

    .line 111
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    sput-boolean v6, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 175
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v1, v6}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->remove(I)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->addGoal(Ljava/lang/String;IJ)Z

    .line 177
    invoke-static {p3, p4}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->increaseRetryTime(Ljava/lang/String;I)Z

    .line 178
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to upload goal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    const-string v1, "Failed to report goal: "

    invoke-static {v7, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 130
    :cond_2
    :try_start_5
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "iat_ids"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/IMFileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_ANALYTICS_UPLOAD_FAILURE:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    .line 133
    const-string v1, "download"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 135
    invoke-static/range {v0 .. v5}, Lcom/inmobi/adtracker/androidsdk/impl/net/HTTPRequestResponseBuilder;->sendHTTPRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    move-result-object v0

    .line 143
    :cond_3
    :goto_2
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    if-ne v1, v0, :cond_6

    .line 145
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 147
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->remove(I)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->saveGoals()V

    .line 149
    const-string v0, "download"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->updateStatus()Z

    .line 153
    :cond_4
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully uploaded goal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    :cond_5
    const-string v1, "download"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->checkDownloadGoalUploaded()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 139
    invoke-static/range {v0 .. v5}, Lcom/inmobi/adtracker/androidsdk/impl/net/HTTPRequestResponseBuilder;->sendHTTPRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    move-result-object v0

    goto :goto_2

    .line 155
    :cond_6
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;->RELOAD_WEBVIEW_ERROR:Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    if-ne v1, v0, :cond_7

    .line 157
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    goto/16 :goto_1

    .line 161
    :cond_7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 164
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->remove(I)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->addGoal(Ljava/lang/String;IJ)Z

    .line 166
    invoke-static {p3, p4}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->increaseRetryTime(Ljava/lang/String;I)Z

    .line 167
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to upload goal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_8
    move-wide v0, p5

    goto/16 :goto_0
.end method

.method public static reportUsingWebview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/32 v6, 0xa4cb80

    const-wide/16 v2, 0x0

    const-string v5, "IMAdTrackerSDK_V_2_5_1"

    .line 185
    .line 187
    :try_start_0
    sget-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    if-eqz v0, :cond_2

    move-wide v0, v2

    .line 192
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 194
    const-string v2, "IMAdTrackerSDK_V_2_5_1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Retrying goalname: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    sget-object v2, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 196
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 201
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v1, "Network Unavailable !!!"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 206
    invoke-static {p3, p4}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->increaseRetryTime(Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 236
    :cond_1
    :goto_1
    return-void

    .line 190
    :cond_2
    cmp-long v0, p5, v6

    if-lez v0, :cond_5

    move-wide v0, v6

    .line 191
    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 232
    :catch_0
    move-exception v0

    .line 234
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    const-string v1, "Failed to load webview Exception"

    invoke-static {v5, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 209
    :cond_3
    :try_start_5
    invoke-static {p3, p4, p5, p6}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->saveCurrentGoal(Ljava/lang/String;IJ)V

    .line 210
    invoke-static {p0, p1, p2, p3, p4}, Lcom/inmobi/adtracker/androidsdk/impl/net/HTTPRequestResponseBuilder;->saveWebviewRequestParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->loadingWebview:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->loadWebview()V

    .line 216
    :cond_4
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 217
    :try_start_6
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 216
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 220
    :try_start_7
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->loadingWebview:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 223
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 226
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->remove(I)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->addGoal(Ljava/lang/String;IJ)Z

    .line 228
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->increaseRetryTime(Ljava/lang/String;I)Z

    .line 229
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Network Timeout !!!Failed to upload goal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 216
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :cond_5
    move-wide v0, p5

    goto/16 :goto_0
.end method
