.class public Lcom/inmobi/adtracker/androidsdk/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDownloadGoalAdded()Z
    .locals 3

    .prologue
    .line 151
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    .line 153
    const-string v1, "Application Context NULL cannot checkStatusUpload"

    .line 152
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "insertStatus"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/IMFileOperations;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkDownloadGoalUploaded()Z
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    .line 139
    const-string v1, "Application Context NULL cannot checkStatusUpload"

    .line 138
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "uploadStatus"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/IMFileOperations;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkPermManifest()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 56
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 57
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    const-string v2, "Cant check permissions"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v3

    .line 65
    goto :goto_0

    :cond_0
    move v0, v3

    .line 67
    goto :goto_0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static increaseRetryTime(Ljava/lang/String;I)Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    const-wide/32 v7, 0xa4cb80

    const-string v10, "IMAdTrackerSDK_V_2_5_1"

    .line 75
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v1, "GoalName cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 110
    :goto_0
    return v0

    .line 80
    :cond_1
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0, p0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->getGoal(Ljava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_5

    .line 84
    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getRetryTime()J

    move-result-wide v1

    .line 85
    cmp-long v3, v1, v7

    if-gez v3, :cond_3

    .line 87
    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    .line 88
    cmp-long v3, v1, v7

    if-lez v3, :cond_2

    move-wide v1, v7

    .line 100
    :cond_2
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->setRetryTime(J)V

    .line 101
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->saveGoals()V

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :cond_3
    const-wide/32 v3, 0xa4cb80

    div-long v3, v1, v3

    .line 94
    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 96
    sget-object v3, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v3, p0, p1}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->removeGoal(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_4
    add-long/2addr v1, v7

    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 107
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    const-string v1, "Cant increase retry time"

    invoke-static {v10, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v9

    .line 108
    goto :goto_0

    :cond_5
    move v0, v9

    .line 110
    goto :goto_0
.end method

.method public static resetStatus()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v3

    .line 47
    :goto_0
    return v0

    .line 46
    :cond_0
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "uploadStatus"

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/IMFileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static sendBroadcastMessage(I)Z
    .locals 3

    .prologue
    .line 118
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    const-string v1, "action.inmobi.ADTRACKER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "iatError"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    const-string v2, "Cant send test broadcast"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->a:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static updateStatus()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 35
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    .line 37
    :cond_0
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "uploadStatus"

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/IMFileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v3

    .line 38
    goto :goto_0
.end method
