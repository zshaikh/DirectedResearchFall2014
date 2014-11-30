.class public Lcom/appoxee/gcm/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>()V

    .line 25
    return-void
.end method

.method private registerOnSite(Ljava/lang/String;)V
    .locals 3
    .param p1, "registrationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appoxee/AppoxeeClientException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v1, "Setup DEBUG: 4/5 - register on appoxee server"

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getClient()Lcom/appoxee/connection/AppoxeeClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appoxee/connection/AppoxeeClient;->registerDevice(Ljava/lang/String;)Z

    move-result v0

    .line 52
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setup DEBUG: 5/5 - registered on appoxee server, result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 53
    if-eqz v0, :cond_0

    .line 54
    const-string v1, "REGISTERED_ON_APPOXEE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method protected getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 30
    .local v0, "senderId":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/appoxee/AppoxeeManager;->getSenderId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 31
    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/google/android/gcm/GCMBaseIntentService;->onCreate()V

    .line 37
    return-void
.end method

.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Error(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 72
    .local v14, "extras":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/appoxee/AppoxeeManager;->setmContext(Landroid/content/Context;)V

    .line 75
    const-string v23, "2e0704cb"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/appoxee/gcm/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "appoxee_pref"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 80
    .local v21, "pref":Landroid/content/SharedPreferences;
    const-string v23, "mSetAppSDKKey"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 81
    .local v18, "mSetAppSDKKey":Ljava/lang/String;
    const-string v23, "mSetAppSecretKey"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 82
    .local v19, "mSetAppSecretKey":Ljava/lang/String;
    const-string v23, "mSetAppDefaultActivityClass"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 83
    .local v17, "mSetAppDefaultActivityClass":Ljava/lang/String;
    const-string v23, "mInboxEnabled"

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 84
    .local v16, "mInboxEnabled":Ljava/lang/Boolean;
    const-string v23, "isAirVersion"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    sput-boolean v23, Lcom/appoxee/AppoxeeManager;->isAirVersion:Z

    .line 85
    const-string v23, "mSetAppSDKKey"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v23, Lcom/appoxee/AppoxeeManager;->mConfiguration:Lcom/appoxee/Configuration;

    if-nez v23, :cond_5

    .line 88
    new-instance v23, Lcom/appoxee/asyncs/initAsync;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appoxee/asyncs/initAsync;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/appoxee/asyncs/initAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    :goto_0
    if-eqz v14, :cond_4

    .line 93
    const/4 v15, 0x0

    .line 95
    .local v15, "hasMessage":Z
    const-string v23, "alert"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "alert":Ljava/lang/String;
    const-string v23, "sound"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, "sound":Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 99
    .local v5, "messageId":J
    const/16 v22, 0x0

    .line 101
    .local v22, "str":Ljava/lang/String;
    const-string v23, "apbcd"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 104
    :try_start_0
    const-string v23, "apbcd"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 105
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v5

    .line 114
    :goto_1
    const/4 v15, 0x1

    .line 129
    :cond_0
    :goto_2
    const-wide/16 v23, 0x0

    cmp-long v23, v5, v23

    if-nez v23, :cond_1

    .line 132
    new-instance v23, Ljava/util/Random;

    invoke-direct/range {v23 .. v23}, Ljava/util/Random;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/util/Random;->nextInt()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v5, v0

    .line 135
    :cond_1
    const/4 v8, 0x0

    .line 136
    .local v8, "push_description":Ljava/lang/String;
    const-string v23, "push_description"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 137
    const-string v23, "push_description"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    :cond_2
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppName()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "title":Ljava/lang/String;
    const-string v23, "push_title"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 143
    const-string v23, "push_title"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    :cond_3
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v11, "notificationIntent":Landroid/content/Intent;
    const-string v20, "com.appoxee.activities.InboxMessage"

    .line 148
    .local v20, "notificationIntentClass":Ljava/lang/String;
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v23, "messageId"

    move-object v0, v11

    move-object/from16 v1, v23

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    const-string v23, "hasMessage"

    move-object v0, v11

    move-object/from16 v1, v23

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "GCM: got new message:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", message="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 153
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "GCM: notification class name:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 154
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "GCM: has message ? "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 156
    invoke-static/range {v5 .. v11}, Lcom/appoxee/AppoxeeManager;->SendNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 158
    invoke-static {v14}, Lcom/appoxee/gcm/PushExtra;->setExtras(Landroid/os/Bundle;)V

    .line 160
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v13, "extraPushIntnet":Landroid/content/Intent;
    const-string v23, "com.appoxee.push.extraPush"

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/appoxee/gcm/GCMIntentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    .end local v5    # "messageId":J
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "push_description":Ljava/lang/String;
    .end local v9    # "alert":Ljava/lang/String;
    .end local v10    # "sound":Ljava/lang/String;
    .end local v11    # "notificationIntent":Landroid/content/Intent;
    .end local v13    # "extraPushIntnet":Landroid/content/Intent;
    .end local v15    # "hasMessage":Z
    .end local v20    # "notificationIntentClass":Ljava/lang/String;
    .end local v22    # "str":Ljava/lang/String;
    :cond_4
    return-void

    .line 90
    :cond_5
    new-instance v23, Lcom/appoxee/asyncs/ReportApplicationActiveAsync;

    invoke-direct/range {v23 .. v23}, Lcom/appoxee/asyncs/ReportApplicationActiveAsync;-><init>()V

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/appoxee/asyncs/ReportApplicationActiveAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 106
    .restart local v5    # "messageId":J
    .restart local v9    # "alert":Ljava/lang/String;
    .restart local v10    # "sound":Ljava/lang/String;
    .restart local v15    # "hasMessage":Z
    .restart local v22    # "str":Ljava/lang/String;
    :catch_0
    move-exception v23

    move-object/from16 v12, v23

    .line 107
    .local v12, "e":Ljava/lang/NumberFormatException;
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "onMessage error: cannot parse message id="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 109
    invoke-static {v12}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 110
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v23

    move-object/from16 v12, v23

    .line 111
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 115
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v23, "p"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 118
    :try_start_1
    const-string v23, "p"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 119
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v5

    goto/16 :goto_2

    .line 120
    :catch_2
    move-exception v23

    move-object/from16 v12, v23

    .line 121
    .local v12, "e":Ljava/lang/NumberFormatException;
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "onMessage error: cannot parse message p= "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 123
    invoke-static {v12}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 124
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v23

    move-object/from16 v12, v23

    .line 125
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto/16 :goto_2
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setup DEBUG: 3/5 - registered in GCM, got id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 43
    :try_start_0
    invoke-direct {p0, p2}, Lcom/appoxee/gcm/GCMIntentService;->registerOnSite(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/appoxee/AppoxeeClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lcom/appoxee/AppoxeeClientException;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unregistered : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 61
    return-void
.end method
