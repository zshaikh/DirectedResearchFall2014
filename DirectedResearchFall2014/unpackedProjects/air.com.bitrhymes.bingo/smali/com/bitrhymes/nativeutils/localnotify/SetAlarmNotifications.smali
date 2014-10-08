.class public Lcom/bitrhymes/nativeutils/localnotify/SetAlarmNotifications;
.super Ljava/lang/Object;
.source "SetAlarmNotifications.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static notificationcount:I


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/bitrhymes/nativeutils/localnotify/SetAlarmNotifications;->notificationcount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "LocalNotification"

    iput-object v0, p0, Lcom/bitrhymes/nativeutils/localnotify/SetAlarmNotifications;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v9, ","

    .line 29
    const-string v0, "SetAlarmNotifications-> FREObject call"

    invoke-virtual {p0, v0}, Lcom/bitrhymes/nativeutils/localnotify/SetAlarmNotifications;->debugLog(Ljava/lang/String;)V

    .line 33
    :try_start_0
    new-instance v6, Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;

    invoke-direct {v6}, Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;-><init>()V

    .line 34
    .local v6, "cln":Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;->clearAlarms(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v6    # "cln":Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "title":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "tickerText":Ljava/lang/String;
    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "message":Ljava/lang/String;
    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bitrhymes/nativeutils/localnotify/SetAlarmNotifications;->startAlarms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "tickerText":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 35
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 36
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while clearing alarm:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bitrhymes/nativeutils/localnotify/SetAlarmNotifications;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 50
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "ERROR_EVENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lcom/bitrhymes/nativeutils/utils/Utils;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "LocalNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public startAlarms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src_title"    # Ljava/lang/String;
    .param p3, "src_scroll"    # Ljava/lang/String;
    .param p4, "src_text"    # Ljava/lang/String;
    .param p5, "src_package"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v11, "startAlarms clicked"

    invoke-virtual {p0, v11}, Lcom/bitrhymes/nativeutils/localnotify/SetAlarmNotifications;->debugLog(Ljava/lang/String;)V

    .line 60
    const/4 v11, 0x0

    sput v11, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->notificationcount:I

    .line 62
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;

    invoke-direct {v7, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v7, "i":Landroid/content/Intent;
    const-class v11, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;

    invoke-virtual {v7, p1, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 66
    const-string v11, "src_title"

    move-object v0, v7

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v11, "src_scroll"

    move-object v0, v7

    move-object v1, v11

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v11, "src_text"

    move-object v0, v7

    move-object v1, v11

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v11, "src_package"

    move-object v0, v7

    move-object v1, v11

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const/4 v5, 0x1

    .line 77
    .local v5, "counter":I
    :goto_0
    const/16 v11, 0x64

    if-le v5, v11, :cond_0

    .line 110
    return-void

    .line 79
    :cond_0
    sget v11, Lcom/bitrhymes/nativeutils/utils/Utils;->requestCode1:I

    mul-int/lit8 v12, v5, 0xa

    add-int/2addr v11, v12

    const/high16 v12, 0x8000000

    invoke-static {p1, v11, v7, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 82
    .local v8, "sender1":Landroid/app/PendingIntent;
    const-string v11, "alarm"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 83
    .local v3, "am":Landroid/app/AlarmManager;
    const/4 v10, 0x0

    .line 85
    .local v10, "timeIntervalForNextAlert":I
    mul-int/lit8 v10, v5, 0x18

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 88
    .local v4, "cal":Ljava/util/Calendar;
    const/16 v11, 0xa

    invoke-virtual {v4, v11, v10}, Ljava/util/Calendar;->add(II)V

    .line 89
    const-string v11, "LocalNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "dd:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x5

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-mm:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-yy:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v11, 0x1

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v3, v11, v12, v13, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 93
    const-string v11, "local-notification"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 94
    .local v9, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 96
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    const-string v11, "LocalNotification"

    const-string v12, "alaram set : "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v11, 0x3

    if-ge v5, v11, :cond_1

    .line 103
    const/4 v5, 0x3

    goto/16 :goto_0

    .line 104
    :cond_1
    const/4 v11, 0x5

    if-ge v5, v11, :cond_2

    .line 105
    const/4 v5, 0x5

    goto/16 :goto_0

    .line 107
    :cond_2
    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_0
.end method
