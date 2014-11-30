.class public Lcom/sgn/mobile/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    new-instance v10, Lcom/sgn/mobile/Notification;

    const-string v18, "extraData"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sgn/mobile/Notification;-><init>(Ljava/lang/String;)V

    .line 24
    .local v10, "notif":Lcom/sgn/mobile/Notification;
    invoke-virtual {v10}, Lcom/sgn/mobile/Notification;->getAlertTitle()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    invoke-virtual {v10}, Lcom/sgn/mobile/Notification;->getAlertTitle()Ljava/lang/String;

    move-result-object v15

    .line 28
    .local v15, "notificationTitle":Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Lcom/sgn/mobile/Notification;->getAlertBody()Ljava/lang/String;

    move-result-object v14

    .line 30
    .local v14, "notificationText":Ljava/lang/String;
    const-string v18, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 31
    .local v13, "notificationManager":Landroid/app/NotificationManager;
    invoke-static/range {p1 .. p1}, Lcom/sgn/mobile/ContextUtils;->get(Landroid/content/Context;)Lcom/sgn/mobile/ContextUtils;

    move-result-object v18

    const-string v19, "GCMNotificationIcon"

    const-string v20, "ic_gcm_notification"

    invoke-virtual/range {v18 .. v20}, Lcom/sgn/mobile/ContextUtils;->getDrawable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 34
    .local v8, "iconId":I
    new-instance v11, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v0, v11

    move v1, v8

    move-object v2, v14

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 38
    .local v11, "notification":Landroid/app/Notification;
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 39
    move-object v0, v11

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 41
    invoke-static/range {p1 .. p1}, Lcom/sgn/mobile/ContextUtils;->get(Landroid/content/Context;)Lcom/sgn/mobile/ContextUtils;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sgn/mobile/ContextUtils;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v12

    .line 42
    .local v12, "notificationIntent":Landroid/content/Intent;
    const-string v18, "extendedTitle"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v18, "extendedText"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v18, "extraData"

    invoke-virtual {v10}, Lcom/sgn/mobile/Notification;->toJSONString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const/4 v9, 0x0

    .line 47
    .local v9, "isRunning":Z
    const-string v18, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 48
    .local v5, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v17

    .line 49
    .local v17, "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v7, 0x0

    .end local p0    # "this":Lcom/sgn/mobile/AlarmReceiver;
    .local v7, "i":I
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 50
    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 51
    const/4 v9, 0x1

    .line 49
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 25
    .end local v5    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "i":I
    .end local v8    # "iconId":I
    .end local v9    # "isRunning":Z
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v12    # "notificationIntent":Landroid/content/Intent;
    .end local v13    # "notificationManager":Landroid/app/NotificationManager;
    .end local v14    # "notificationText":Ljava/lang/String;
    .end local v15    # "notificationTitle":Ljava/lang/String;
    .end local v17    # "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local p0    # "this":Lcom/sgn/mobile/AlarmReceiver;
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sgn/mobile/ContextUtils;->get(Landroid/content/Context;)Lcom/sgn/mobile/ContextUtils;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sgn/mobile/ContextUtils;->getApplicationName()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "notificationTitle":Ljava/lang/String;
    goto/16 :goto_0

    .line 56
    .end local p0    # "this":Lcom/sgn/mobile/AlarmReceiver;
    .restart local v5    # "activityManager":Landroid/app/ActivityManager;
    .restart local v7    # "i":I
    .restart local v8    # "iconId":I
    .restart local v9    # "isRunning":Z
    .restart local v11    # "notification":Landroid/app/Notification;
    .restart local v12    # "notificationIntent":Landroid/content/Intent;
    .restart local v13    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v14    # "notificationText":Ljava/lang/String;
    .restart local v17    # "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    if-eqz v9, :cond_3

    sget-object v18, Lcom/sgn/mobile/SGNMobile;->activeInstance:Lcom/sgn/mobile/SGNMobile;

    if-eqz v18, :cond_3

    sget-object v18, Lcom/sgn/mobile/SGNMobile;->activeInstance:Lcom/sgn/mobile/SGNMobile;

    invoke-virtual/range {v18 .. v18}, Lcom/sgn/mobile/SGNMobile;->isActive()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 57
    sget-object v18, Lcom/sgn/mobile/SGNMobile;->activeInstance:Lcom/sgn/mobile/SGNMobile;

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/sgn/mobile/SGNMobile;->processLocalNotification(Landroid/content/Intent;)V

    .line 77
    :goto_2
    return-void

    .line 60
    :cond_3
    const-string v18, "openApp"

    const/16 v19, 0x1

    move-object v0, v12

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    const-string v18, "extraData"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v6

    .line 62
    .local v6, "hashCode":I
    const/high16 v18, 0x10000000

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v12

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 65
    .local v16, "pendingIntent":Landroid/app/PendingIntent;
    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v14

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 70
    const/16 v18, 0xc8

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/app/Notification;->ledOnMS:I

    .line 71
    const/16 v18, 0xc8

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/app/Notification;->ledOffMS:I

    .line 75
    invoke-virtual {v13, v6, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2
.end method
