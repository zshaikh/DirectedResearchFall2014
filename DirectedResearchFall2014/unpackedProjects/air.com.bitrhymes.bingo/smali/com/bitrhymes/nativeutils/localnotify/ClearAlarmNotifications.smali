.class public Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;
.super Ljava/lang/Object;
.source "ClearAlarmNotifications.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "LocalNotification"

    iput-object v0, p0, Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1
    .parameter "context"
    .parameter "arg1"

    .prologue
    .line 27
    const-string v0, "ClearAlarmNotifications -> FREObject call"

    invoke-virtual {p0, v0}, Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;->debugLog(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;->clearAlarms(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;->clearLocalNotificationsSetByBackend(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearAlarms(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 68
    const-string v4, "clearAlarms clicked"

    invoke-virtual {p0, v4}, Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;->debugLog(Ljava/lang/String;)V

    .line 69
    const/4 v4, 0x0

    sput v4, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->notificationcount:I

    .line 71
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v2, i:Landroid/content/Intent;
    const-class v4, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;

    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 74
    const/4 v1, 0x1

    .line 76
    .local v1, counter:I
    :goto_0
    const/16 v4, 0x64

    if-le v1, v4, :cond_0

    .line 92
    return-void

    .line 78
    :cond_0
    sget v4, Lcom/bitrhymes/nativeutils/utils/Utils;->requestCode1:I

    mul-int/lit8 v5, v1, 0xa

    add-int/2addr v4, v5

    const/high16 v5, 0x800

    invoke-static {p1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 81
    .local v3, sender1:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 82
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 84
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 85
    const/4 v1, 0x3

    goto :goto_0

    .line 86
    :cond_1
    const/4 v4, 0x5

    if-ge v1, v4, :cond_2

    .line 87
    const/4 v1, 0x5

    goto :goto_0

    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x5

    goto :goto_0
.end method

.method public clearLocalNotificationsSetByBackend(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 35
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 36
    .local v4, i:Landroid/content/Intent;
    const-class v9, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;

    invoke-virtual {v4, p1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 37
    const-string v9, "local-notification"

    invoke-virtual {p1, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 38
    .local v8, settings:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 40
    .local v0, allNotifyIdsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 42
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 64
    :cond_1
    return-void

    .line 42
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 44
    .local v6, notifyId:Ljava/lang/String;
    invoke-interface {v8, v6, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 46
    .local v5, isCleared:Z
    if-nez v5, :cond_0

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 50
    .local v2, counter:I
    sget v10, Lcom/bitrhymes/nativeutils/utils/Utils;->requestCode1:I

    mul-int/lit8 v11, v2, 0xa

    add-int/2addr v10, v11

    const/high16 v11, 0x800

    invoke-static {p1, v10, v4, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 53
    .local v7, sender1:Landroid/app/PendingIntent;
    const-string v10, "alarm"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 54
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 56
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 58
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v10, 0x1

    invoke-interface {v3, v6, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public debugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 22
    const-string v0, "LocalNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method
