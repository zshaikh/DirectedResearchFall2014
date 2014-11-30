.class public Lcom/sgn/mobile/SGNMobile;
.super Lcom/jesusla/ane/Context;
.source "SGNMobile.java"


# static fields
.field private static final MTX_URL:Ljava/lang/String; = "http://mt.iphone.sgn.com/android_microtransactions/record_transaction.php"

.field public static activeInstance:Lcom/sgn/mobile/SGNMobile;


# instance fields
.field private _isActive:Z

.field private appID:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private final client:Lcom/loopj/android/http/AsyncHttpClient;

.field private deviceId:Ljava/lang/String;

.field private sessionEndTime:J

.field private sessionStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/jesusla/ane/Context;-><init>()V

    .line 40
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/sgn/mobile/SGNMobile;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sgn/mobile/SGNMobile;->_isActive:Z

    .line 51
    sput-object p0, Lcom/sgn/mobile/SGNMobile;->activeInstance:Lcom/sgn/mobile/SGNMobile;

    .line 52
    const-string v0, "getDeviceInfo"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 53
    const-string v0, "log"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 54
    const-string v0, "verifyTransaction"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 55
    const-string v0, "fixMuteSwitch"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 56
    const-string v0, "scheduleLocalNotification"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 57
    const-string v0, "presentLocalNotificationNow"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 58
    const-string v0, "cancelAllLocalNotifications"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 59
    const-string v0, "cancelLocalNotification"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 60
    const-string v0, "applicationIconBadgeNumber"

    const-string v1, "getApplicationIconBadgeNumber"

    invoke-virtual {p0, v0, v1}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "setApplicationIconBadgeNumber"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 62
    const-string v0, "scheduledLocalNotifications"

    const-string v1, "getScheduledLocalNotifications"

    invoke-virtual {p0, v0, v1}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "setScheduledLocalNotifications"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 64
    const-string v0, "screenSize"

    const-string v1, "getScreenSize"

    invoke-virtual {p0, v0, v1}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "isTablet"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 66
    const-string v0, "_onActivate"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 67
    const-string v0, "_onDeactivate"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 68
    const-string v0, "showNativePopup"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->registerFunction(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private clearOldLocalNotifications()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "scheduledLocalNotifications"

    invoke-virtual {v7, v8, v11}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 403
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 404
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 406
    .local v0, "currentDate":Ljava/util/Date;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    .line 407
    .local v5, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local p0    # "this":Lcom/sgn/mobile/SGNMobile;
    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 408
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 409
    .local v3, "fireDate":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 410
    const-string v7, "Removing old local notification with key %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 415
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "fireDate":Ljava/lang/Long;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    return-void
.end method

.method private getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 113
    .local v1, "manager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 114
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPendingIntent(Lcom/sgn/mobile/Notification;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "notif"    # Lcom/sgn/mobile/Notification;

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sgn/mobile/AlarmReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extraData"

    invoke-virtual {p1}, Lcom/sgn/mobile/Notification;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sgn/mobile/Notification;->getHashCode()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 386
    .local v1, "sender":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private handleLocalNotification()V
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->processLocalNotification(Landroid/content/Intent;)V

    .line 287
    invoke-direct {p0}, Lcom/sgn/mobile/SGNMobile;->clearOldLocalNotifications()V

    .line 288
    return-void
.end method

.method private handleRemoteNotification()V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sgn/mobile/SGNMobile;->processRemoteNotification(Landroid/content/Intent;)V

    .line 293
    return-void
.end method

.method private raterHandleForeground()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method private raterHandleLaunch()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method private registerForRemoteNotifications()V
    .locals 5

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 324
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 325
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "regId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "GCMSenderID"

    invoke-virtual {p0, v4}, Lcom/sgn/mobile/SGNMobile;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 328
    :cond_0
    return-void
.end method

.method private saveLocalNotification(Lcom/sgn/mobile/Notification;)V
    .locals 6
    .param p1, "notif"    # Lcom/sgn/mobile/Notification;

    .prologue
    const/4 v5, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "scheduledLocalNotifications"

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 394
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 395
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Saving scheduled local notification with hasCode %s - for fire date %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sgn/mobile/Notification;->getHashCode()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/sgn/mobile/Notification;->getFireDate()Ljava/util/Date;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    invoke-virtual {p1}, Lcom/sgn/mobile/Notification;->getHashCode()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sgn/mobile/Notification;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 398
    return-void
.end method

.method public static sendOpenURL(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 344
    sget-object v0, Lcom/sgn/mobile/SGNMobile;->activeInstance:Lcom/sgn/mobile/SGNMobile;

    if-eqz v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendOpenURL("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    const-string v0, "sgn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 347
    sget-object v0, Lcom/sgn/mobile/SGNMobile;->activeInstance:Lcom/sgn/mobile/SGNMobile;

    const-string v1, "OPEN_URL"

    invoke-virtual {v0, p0, v1}, Lcom/sgn/mobile/SGNMobile;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_0
    return-void
.end method

.method private updateUsageStatistics()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "SGNSessionCount"

    .line 331
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 332
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "SGNSessionCount"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 334
    .local v4, "sessionCount":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 336
    .local v1, "installDate":J
    const-string v5, "SGNInstallDate"

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 337
    const-string v5, "SGNInstallVersion"

    iget-object v6, p0, Lcom/sgn/mobile/SGNMobile;->appVersion:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    .end local v1    # "installDate":J
    :cond_0
    const-string v5, "SGNSessionCount"

    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 340
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    return-void
.end method


# virtual methods
.method public _onActivate()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sgn/mobile/SGNMobile;->_isActive:Z

    .line 86
    invoke-direct {p0}, Lcom/sgn/mobile/SGNMobile;->raterHandleForeground()V

    .line 87
    invoke-direct {p0}, Lcom/sgn/mobile/SGNMobile;->handleRemoteNotification()V

    .line 88
    invoke-direct {p0}, Lcom/sgn/mobile/SGNMobile;->handleLocalNotification()V

    .line 89
    return-void
.end method

.method public _onDeactivate()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sgn/mobile/SGNMobile;->_isActive:Z

    .line 93
    return-void
.end method

.method public cancelAllLocalNotifications()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "scheduledLocalNotifications"

    invoke-virtual {v9, v10, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 203
    .local v7, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 205
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "alarm"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 207
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    .line 208
    .local v6, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 209
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 211
    .local v3, "fireDate":Ljava/lang/Long;
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/sgn/mobile/AlarmReceiver;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v10

    const/high16 v11, 0x8000000

    invoke-static {v9, v10, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 213
    .local v8, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 214
    const-string v9, "Cancelling all local notifications, current with key %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v1, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 218
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "fireDate":Ljava/lang/Long;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "sender":Landroid/app/PendingIntent;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void
.end method

.method public cancelLocalNotification(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lcom/sgn/mobile/Notification;

    invoke-direct {v3, p1}, Lcom/sgn/mobile/Notification;-><init>(Ljava/util/Map;)V

    .line 223
    .local v3, "notif":Lcom/sgn/mobile/Notification;
    invoke-direct {p0, v3}, Lcom/sgn/mobile/SGNMobile;->getPendingIntent(Lcom/sgn/mobile/Notification;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 224
    .local v5, "sender":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 225
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 228
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "scheduledLocalNotifications"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 230
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v3}, Lcom/sgn/mobile/Notification;->getFireDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v4, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 233
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 234
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public fixMuteSwitch()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public getApplicationIconBadgeNumber()I
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceInfo()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v4, "android"

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, "rv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "os"

    const-string v2, "android"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "osVersion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "androidId"

    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getUtils()Lcom/sgn/mobile/ContextUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sgn/mobile/ContextUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "deviceFamily"

    const-string v2, "android"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "deviceModel"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "macAddress"

    invoke-direct {p0}, Lcom/sgn/mobile/SGNMobile;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "imei"

    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getUtils()Lcom/sgn/mobile/ContextUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sgn/mobile/ContextUtils;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-object v0
.end method

.method public getScheduledLocalNotifications()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v4, "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "scheduledLocalNotifications"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 253
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 254
    .local v2, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0    # "this":Lcom/sgn/mobile/SGNMobile;
    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v3, Lcom/sgn/mobile/Notification;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v3, p0}, Lcom/sgn/mobile/Notification;-><init>(Ljava/lang/String;)V

    .line 256
    .local v3, "notif":Lcom/sgn/mobile/Notification;
    invoke-virtual {v3}, Lcom/sgn/mobile/Notification;->getOriginalMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "notif":Lcom/sgn/mobile/Notification;
    :cond_0
    return-object v4
.end method

.method public getScreenSize()F
    .locals 11

    .prologue
    const-wide/high16 v9, 0x4000000000000000L

    .line 266
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 267
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 268
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 269
    .local v3, "x":D
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 270
    .local v5, "y":D
    add-double v7, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 271
    .local v1, "screenInches":D
    double-to-float v7, v1

    return v7
.end method

.method public getUtils()Lcom/sgn/mobile/ContextUtils;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sgn/mobile/ContextUtils;->get(Landroid/content/Context;)Lcom/sgn/mobile/ContextUtils;

    move-result-object v0

    return-object v0
.end method

.method protected initContext()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getUtils()Lcom/sgn/mobile/ContextUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgn/mobile/ContextUtils;->getAppID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgn/mobile/SGNMobile;->appID:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getUtils()Lcom/sgn/mobile/ContextUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgn/mobile/ContextUtils;->getInstallVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgn/mobile/SGNMobile;->appVersion:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getUtils()Lcom/sgn/mobile/ContextUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgn/mobile/ContextUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgn/mobile/SGNMobile;->deviceId:Ljava/lang/String;

    .line 76
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sgn/mobile/SGNMobile;->sessionEndTime:J

    iput-wide v0, p0, Lcom/sgn/mobile/SGNMobile;->sessionStartTime:J

    .line 77
    invoke-direct {p0}, Lcom/sgn/mobile/SGNMobile;->updateUsageStatistics()V

    .line 78
    invoke-direct {p0}, Lcom/sgn/mobile/SGNMobile;->registerForRemoteNotifications()V

    .line 79
    invoke-direct {p0}, Lcom/sgn/mobile/SGNMobile;->handleRemoteNotification()V

    .line 80
    invoke-direct {p0}, Lcom/sgn/mobile/SGNMobile;->handleLocalNotification()V

    .line 81
    invoke-direct {p0}, Lcom/sgn/mobile/SGNMobile;->raterHandleLaunch()V

    .line 82
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sgn/mobile/SGNMobile;->_isActive:Z

    return v0
.end method

.method public isTablet()Z
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getScreenSize()F

    move-result v0

    const/high16 v1, 0x40c00000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, "ANE"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public presentLocalNotificationNow(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "fireDate"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {p0, p1}, Lcom/sgn/mobile/SGNMobile;->scheduleLocalNotification(Ljava/util/Map;)V

    .line 198
    invoke-direct {p0}, Lcom/sgn/mobile/SGNMobile;->clearOldLocalNotifications()V

    .line 199
    return-void
.end method

.method public processLocalNotification(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v5, "openApp"

    const-string v7, "extraData"

    .line 311
    const-string v3, "extraData"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    const-string v3, "extraData"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "bundleData":Ljava/lang/String;
    new-instance v2, Lcom/sgn/mobile/Notification;

    invoke-direct {v2, v0}, Lcom/sgn/mobile/Notification;-><init>(Ljava/lang/String;)V

    .line 314
    .local v2, "notif":Lcom/sgn/mobile/Notification;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 315
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "data"

    invoke-virtual {v2}, Lcom/sgn/mobile/Notification;->getOriginalMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/sgn/mobile/JSON;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v3, "openApp"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "openApp"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_0
    const-string v3, "onNotification"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "LOCAL_NOTIFICATION"

    aput-object v6, v4, v5

    aput-object v1, v4, v8

    invoke-virtual {p0, v9, v9, v3, v4}, Lcom/sgn/mobile/SGNMobile;->asyncFlashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    const-string v3, "extraData"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 320
    .end local v0    # "bundleData":Ljava/lang/String;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "notif":Lcom/sgn/mobile/Notification;
    :cond_1
    return-void
.end method

.method public processRemoteNotification(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v10, "pushId"

    const-string v6, "openApp"

    .line 296
    const-string v4, "pushId"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "pushID":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 298
    invoke-static {}, Lcom/sgn/mobile/ServerNotification;->get()Lcom/sgn/mobile/ServerNotification;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/sgn/mobile/ServerNotification;->sendPushOpenTracking(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    const-string v4, "extraData"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "bundleData":Ljava/lang/String;
    new-instance v2, Lcom/sgn/mobile/Notification;

    invoke-direct {v2, v0}, Lcom/sgn/mobile/Notification;-><init>(Ljava/lang/String;)V

    .line 302
    .local v2, "notif":Lcom/sgn/mobile/Notification;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "data"

    invoke-virtual {v2}, Lcom/sgn/mobile/Notification;->getOriginalMap()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/sgn/mobile/JSON;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v4, "openApp"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "openApp"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_0
    const-string v4, "onNotification"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "REMOTE_NOTIFICATION"

    aput-object v7, v5, v6

    aput-object v1, v5, v8

    invoke-virtual {p0, v9, v9, v4, v5}, Lcom/sgn/mobile/SGNMobile;->asyncFlashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    const-string v4, "pushId"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 308
    .end local v0    # "bundleData":Ljava/lang/String;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "notif":Lcom/sgn/mobile/Notification;
    :cond_1
    return-void
.end method

.method public scheduleLocalNotification(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lcom/sgn/mobile/Notification;

    invoke-direct {v3, p1}, Lcom/sgn/mobile/Notification;-><init>(Ljava/util/Map;)V

    .line 181
    .local v3, "notif":Lcom/sgn/mobile/Notification;
    invoke-direct {p0}, Lcom/sgn/mobile/SGNMobile;->clearOldLocalNotifications()V

    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 184
    .local v1, "cal":Ljava/util/Calendar;
    const-string v5, "fireDate"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 185
    .local v2, "fire":Ljava/util/Date;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 187
    invoke-direct {p0, v3}, Lcom/sgn/mobile/SGNMobile;->getPendingIntent(Lcom/sgn/mobile/Notification;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 188
    .local v4, "sender":Landroid/app/PendingIntent;
    invoke-direct {p0, v3}, Lcom/sgn/mobile/SGNMobile;->saveLocalNotification(Lcom/sgn/mobile/Notification;)V

    .line 191
    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 192
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 193
    return-void
.end method

.method public setApplicationIconBadgeNumber(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 244
    return-void
.end method

.method public setScheduledLocalNotifications([Ljava/lang/Object;)V
    .locals 0
    .param p1, "notifications"    # [Ljava/lang/Object;

    .prologue
    .line 263
    return-void
.end method

.method public showNativePopup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "buttons"    # [Ljava/lang/String;
    .param p4, "callback"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 354
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sgn/mobile/SGNMobile;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 359
    .local v2, "dialog":Landroid/app/AlertDialog;
    const/4 v4, 0x3

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 360
    .local v1, "buttonNumber":[I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_1

    .line 361
    array-length v4, v1

    if-lt v3, v4, :cond_0

    .line 360
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    :cond_0
    aget-object v0, p3, v3

    .line 363
    .local v0, "button":Ljava/lang/String;
    aget v4, v1, v3

    new-instance v5, Lcom/sgn/mobile/SGNMobile$2;

    invoke-direct {v5, p0, p4, v1}, Lcom/sgn/mobile/SGNMobile$2;-><init>(Lcom/sgn/mobile/SGNMobile;Lcom/jesusla/ane/Closure;[I)V

    invoke-virtual {v2, v4, v0, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 376
    .end local v0    # "button":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 377
    return-void

    .line 359
    :array_0
    .array-data 4
        -0x1
        -0x2
        -0x3
    .end array-data
.end method

.method public verifyTransaction(Ljava/util/Map;Lcom/jesusla/ane/Closure;)Z
    .locals 12
    .param p2, "callback"    # Lcom/jesusla/ane/Closure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/jesusla/ane/Closure;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "http://mt.iphone.sgn.com/android_microtransactions/record_transaction.php"

    .line 124
    const-string v5, "vendor"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, "marketId":Ljava/lang/String;
    const-string v5, "productIdentifier"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, "productId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 127
    .local v4, "transactionId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 130
    .local v3, "responseCode":Ljava/lang/String;
    const-string v5, "GOOGLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    const-string v5, "_signedData"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "transactionId":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 132
    .restart local v4    # "transactionId":Ljava/lang/String;
    const-string v5, "_signature"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "responseCode":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 138
    .restart local v3    # "responseCode":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    if-nez v2, :cond_3

    .line 139
    :cond_1
    const-string v5, "Unable to verify transaction %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {v5, v6}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p2, v5}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    move v5, v8

    .line 173
    :goto_1
    return v5

    .line 134
    :cond_2
    const-string v5, "AMAZON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    const-string v5, "_purchaseToken"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "responseCode":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "responseCode":Ljava/lang/String;
    move-object v4, v3

    goto :goto_0

    .line 145
    :cond_3
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "iphone_id"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/sgn/mobile/SGNMobile;->deviceId:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "app_id"

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/sgn/mobile/SGNMobile;->appID:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "quantity"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "app_store_id"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    aput-object v2, v5, v6

    const/16 v6, 0x8

    const-string v7, "store_transaction_id"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    aput-object v4, v5, v6

    const/16 v6, 0xa

    const-string v7, "response"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    aput-object v3, v5, v6

    const/16 v6, 0xc

    const-string v7, "market_id"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v1, v5}, Lcom/loopj/android/http/RequestParams;-><init>([Ljava/lang/Object;)V

    .line 153
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    const-string v5, "Verification URL: %s %s"

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "http://mt.iphone.sgn.com/android_microtransactions/record_transaction.php"

    aput-object v11, v6, v8

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v5, p0, Lcom/sgn/mobile/SGNMobile;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v6, "http://mt.iphone.sgn.com/android_microtransactions/record_transaction.php"

    new-instance v6, Lcom/sgn/mobile/SGNMobile$1;

    invoke-direct {v6, p0, p2}, Lcom/sgn/mobile/SGNMobile$1;-><init>(Lcom/sgn/mobile/SGNMobile;Lcom/jesusla/ane/Closure;)V

    invoke-virtual {v5, v11, v1, v6}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    move v5, v9

    .line 173
    goto :goto_1
.end method
