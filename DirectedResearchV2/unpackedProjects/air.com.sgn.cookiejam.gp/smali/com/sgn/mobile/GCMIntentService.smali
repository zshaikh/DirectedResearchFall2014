.class public Lcom/sgn/mobile/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# instance fields
.field private senderIDs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>()V

    return-void
.end method

.method private getUtils()Lcom/sgn/mobile/ContextUtils;
    .locals 1

    .prologue
    .line 138
    invoke-static {p0}, Lcom/sgn/mobile/ContextUtils;->get(Landroid/content/Context;)Lcom/sgn/mobile/ContextUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    iget-object v1, p0, Lcom/sgn/mobile/GCMIntentService;->senderIDs:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/sgn/mobile/GCMIntentService;->getUtils()Lcom/sgn/mobile/ContextUtils;

    move-result-object v1

    const-string v2, "GCMSenderID"

    invoke-virtual {v1, v2}, Lcom/sgn/mobile/ContextUtils;->getRequiredProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "senderID":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/sgn/mobile/GCMIntentService;->senderIDs:[Ljava/lang/String;

    .line 29
    .end local v0    # "senderID":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sgn/mobile/GCMIntentService;->senderIDs:[Ljava/lang/String;

    return-object v1
.end method

.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "onError %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "messageIntent"    # Landroid/content/Intent;

    .prologue
    .line 39
    const-string v25, "onMessage %s [%s]"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object p2, v26, v27

    const/16 v27, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 43
    .local v8, "extras":Landroid/os/Bundle;
    const-string v25, "title"

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 44
    .local v20, "notificationTitle":Ljava/lang/String;
    if-nez v20, :cond_0

    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/sgn/mobile/GCMIntentService;->getUtils()Lcom/sgn/mobile/ContextUtils;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sgn/mobile/ContextUtils;->getApplicationName()Ljava/lang/String;

    move-result-object v20

    .line 46
    :cond_0
    const-string v25, "subtitle"

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 47
    .local v19, "notificationText":Ljava/lang/String;
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_2

    .line 48
    :cond_1
    const-string v25, "Ignoring empty notification"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .end local p1    # "ctx":Landroid/content/Context;
    :goto_0
    return-void

    .line 51
    .restart local p1    # "ctx":Landroid/content/Context;
    :cond_2
    const-string v25, "url"

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 52
    .local v23, "url":Ljava/lang/String;
    const-string v25, "pushid"

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 54
    .local v16, "notificationId":Ljava/lang/String;
    const-string v25, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sgn/mobile/GCMIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 55
    .local v18, "notificationManager":Landroid/app/NotificationManager;
    invoke-direct/range {p0 .. p0}, Lcom/sgn/mobile/GCMIntentService;->getUtils()Lcom/sgn/mobile/ContextUtils;

    move-result-object v25

    const-string v26, "GCMNotificationIcon"

    const-string v27, "ic_gcm_notification"

    invoke-virtual/range {v25 .. v27}, Lcom/sgn/mobile/ContextUtils;->getDrawable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 58
    .local v11, "iconId":I
    new-instance v15, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    move-object v0, v15

    move v1, v11

    move-object/from16 v2, v19

    move-wide/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 62
    .local v15, "notification":Landroid/app/Notification;
    const/16 v25, 0x10

    move/from16 v0, v25

    move-object v1, v15

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 63
    move-object v0, v15

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object v1, v15

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 66
    if-nez v23, :cond_5

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/sgn/mobile/GCMIntentService;->getUtils()Lcom/sgn/mobile/ContextUtils;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sgn/mobile/ContextUtils;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v17

    .line 70
    .local v17, "notificationIntent":Landroid/content/Intent;
    :goto_1
    const-string v25, "pushId"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v25, "url"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v25, "extendedTitle"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v25, "extendedText"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v13, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 78
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v8, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    .line 79
    .local v24, "val":Ljava/lang/Object;
    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 82
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "key":Ljava/lang/String;
    .end local v24    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v25

    move-object/from16 v6, v25

    .line 84
    .local v6, "e":Lorg/json/JSONException;
    const-string v25, "Filed json creation from push notification data"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "extraData":Ljava/lang/String;
    const-string v25, "extraData"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const/4 v12, 0x0

    .line 91
    .local v12, "isRunning":Z
    const-string v25, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sgn/mobile/GCMIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 92
    .local v5, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v22

    .line 93
    .local v22, "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v9, 0x0

    .end local p1    # "ctx":Landroid/content/Context;
    .local v9, "i":I
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    move v0, v9

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 94
    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sgn/mobile/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 95
    const/4 v12, 0x1

    .line 93
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 69
    .end local v5    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "extraData":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v12    # "isRunning":Z
    .end local v13    # "json":Lorg/json/JSONObject;
    .end local v17    # "notificationIntent":Landroid/content/Intent;
    .end local v22    # "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local p1    # "ctx":Landroid/content/Context;
    :cond_5
    new-instance v17, Landroid/content/Intent;

    const-class v25, Lcom/sgn/mobile/OpenPushActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v17    # "notificationIntent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 99
    .end local p1    # "ctx":Landroid/content/Context;
    .restart local v5    # "activityManager":Landroid/app/ActivityManager;
    .restart local v7    # "extraData":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v12    # "isRunning":Z
    .restart local v13    # "json":Lorg/json/JSONObject;
    .restart local v22    # "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_6
    if-eqz v12, :cond_7

    sget-object v25, Lcom/sgn/mobile/SGNMobile;->activeInstance:Lcom/sgn/mobile/SGNMobile;

    if-eqz v25, :cond_7

    sget-object v25, Lcom/sgn/mobile/SGNMobile;->activeInstance:Lcom/sgn/mobile/SGNMobile;

    invoke-virtual/range {v25 .. v25}, Lcom/sgn/mobile/SGNMobile;->isActive()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 101
    invoke-static {}, Lcom/sgn/mobile/ServerNotification;->get()Lcom/sgn/mobile/ServerNotification;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sgn/mobile/ServerNotification;->sendPushTracking(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    sget-object v25, Lcom/sgn/mobile/SGNMobile;->activeInstance:Lcom/sgn/mobile/SGNMobile;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sgn/mobile/SGNMobile;->processRemoteNotification(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 106
    :cond_7
    const-string v25, "openApp"

    const/16 v26, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v25

    const/high16 v26, 0x10000000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 110
    .local v21, "pendingIntent":Landroid/app/PendingIntent;
    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 115
    const/16 v25, 0xc8

    move/from16 v0, v25

    move-object v1, v15

    iput v0, v1, Landroid/app/Notification;->ledOnMS:I

    .line 116
    const/16 v25, 0xc8

    move/from16 v0, v25

    move-object v1, v15

    iput v0, v1, Landroid/app/Notification;->ledOffMS:I

    .line 119
    invoke-static {}, Lcom/sgn/mobile/ServerNotification;->get()Lcom/sgn/mobile/ServerNotification;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sgn/mobile/ServerNotification;->sendPushTracking(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "gcmID"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v0, "onRegistered %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lcom/sgn/mobile/ServerNotification;->get()Lcom/sgn/mobile/ServerNotification;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/sgn/mobile/ServerNotification;->sendNewRegistration(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "gcmID"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v0, "onUnregistered %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    return-void
.end method
