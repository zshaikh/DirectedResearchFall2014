.class public Lcom/appoxee/asyncs/Setup;
.super Landroid/os/AsyncTask;
.source "Setup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x1

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const-string v6, ""

    .line 22
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-nez v4, :cond_0

    .line 23
    const-string v4, "mailboxTitle"

    const-string v5, "Inbox"

    invoke-static {v4, v5}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 24
    const-string v4, "RTL"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 25
    const-string v4, "moreAppsEnabled"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 26
    const-string v4, "feedbackEnabled"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 28
    :cond_0
    invoke-static {}, Lcom/appoxee/utils/Utils;->setupLogger()V

    .line 29
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 30
    .local v2, "result":Ljava/lang/Boolean;
    const-string v4, "Setup DEBUG: 0/5 - start setup"

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 33
    new-instance v4, Lcom/appoxee/connection/AppoxeeClient;

    invoke-direct {v4}, Lcom/appoxee/connection/AppoxeeClient;-><init>()V

    invoke-static {v4}, Lcom/appoxee/AppoxeeManager;->setClient(Lcom/appoxee/connection/AppoxeeClient;)V

    .line 35
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getLayoutIds()Z

    move-result v4

    if-nez v4, :cond_1

    .line 37
    const-string v4, "Setup DEBUG:getLayoutIds is false"

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 38
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 94
    :goto_0
    return-object v4

    .line 41
    :cond_1
    const/4 v3, 0x0

    .line 43
    .local v3, "wasUpdated":Z
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->timeToUpdateConfiguration()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 44
    :cond_2
    const-string v4, "Setup DEBUG: 1/5 - get server application configuration"

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 46
    :try_start_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getServerApplicationConfiguration()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/appoxee/AppoxeeClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 47
    const/4 v3, 0x1

    .line 56
    :cond_3
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-eqz v4, :cond_4

    if-eqz v3, :cond_5

    .line 58
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    :goto_1
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "regId":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSenderId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSenderId()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-eq v4, v6, :cond_7

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setup DEBUG: 2/5 - register in GCM using "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Registration ID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 68
    :try_start_2
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSenderId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 79
    .end local v1    # "regId":Ljava/lang/String;
    :cond_5
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->reRegisterDevice()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Lcom/appoxee/AppoxeeClientException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 85
    :goto_3
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-eqz v4, :cond_6

    .line 87
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "FirstTimeExecution"

    invoke-interface {v4, v5, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    :cond_6
    move-object v4, v2

    .line 94
    goto/16 :goto_0

    .line 48
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 49
    .local v0, "e":Lcom/appoxee/AppoxeeClientException;
    const-string v4, "Failed to get app configuration from server."

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 50
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    .line 52
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 60
    .end local v0    # "e":Lcom/appoxee/AppoxeeClientException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "d"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "regId":Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 70
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_2

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v4, "Setup DEBUG: device already registered in GCM"

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    goto :goto_2

    .line 80
    .end local v1    # "regId":Ljava/lang/String;
    :catch_3
    move-exception v4

    move-object v0, v4

    .line 81
    .local v0, "e":Lcom/appoxee/AppoxeeClientException;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    .line 82
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/asyncs/Setup;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 98
    invoke-static {p1}, Lcom/appoxee/AppoxeeManager;->setReady(Ljava/lang/Boolean;)V

    .line 99
    new-instance v0, Lcom/appoxee/asyncs/ReportApplicationActiveAsync;

    invoke-direct {v0}, Lcom/appoxee/asyncs/ReportApplicationActiveAsync;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appoxee/asyncs/ReportApplicationActiveAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/appoxee/asyncs/Setup;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
