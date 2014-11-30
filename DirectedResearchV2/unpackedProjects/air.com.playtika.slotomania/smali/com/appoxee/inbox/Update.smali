.class public Lcom/appoxee/inbox/Update;
.super Landroid/os/AsyncTask;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private timeSinceLastUpdate()J
    .locals 8

    .prologue
    const-string v7, "lastUpdate"

    .line 37
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "lastUpdate"

    const-wide/16 v5, 0x0

    invoke-interface {v4, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 38
    .local v0, "lastUpdate":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 39
    .local v2, "now":J
    const-string v4, "lastUpdate"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 40
    sub-long v4, v2, v0

    return-wide v4
.end method


# virtual methods
.method public LoadDeviceMessages(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11
    .param p1, "queryType"    # Ljava/lang/String;

    .prologue
    const-string v7, "latestMessageDate"

    .line 44
    const/4 v6, 0x0

    .line 46
    .local v6, "newMessages":I
    :try_start_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "latestMessageDate"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "latestMessageDate":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getClient()Lcom/appoxee/connection/AppoxeeClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appoxee/connection/AppoxeeClient;->getServerTime()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "latestMessageDateServer":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 49
    move-object v2, v3

    .line 51
    :cond_0
    if-eqz v2, :cond_3

    .line 52
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getClient()Lcom/appoxee/connection/AppoxeeClient;

    move-result-object v7

    invoke-virtual {v7, v2, p1}, Lcom/appoxee/connection/AppoxeeClient;->getDeviceMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 54
    .local v5, "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 55
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 63
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-string v7, "APPOXEE_INBOX_UPDATE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "inboxUpdate":Landroid/content/Intent;
    const-string v7, "numberOfMessage"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 67
    const-string v7, "FirstTimeExecution"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 71
    .end local v1    # "inboxUpdate":Landroid/content/Intent;
    :goto_1
    const-string v7, "latestMessageDate"

    invoke-static {v7, v3}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/appoxee/AppoxeeClientException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 83
    .end local v2    # "latestMessageDate":Ljava/lang/String;
    .end local v3    # "latestMessageDateServer":Ljava/lang/String;
    .end local v5    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 55
    .restart local v2    # "latestMessageDate":Ljava/lang/String;
    .restart local v3    # "latestMessageDateServer":Ljava/lang/String;
    .restart local v5    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    :cond_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appoxee/inbox/Message;
    :try_end_1
    .catch Lcom/appoxee/AppoxeeClientException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 57
    .local v4, "message":Lcom/appoxee/inbox/Message;
    :try_start_2
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getHelper()Lcom/appoxee/inbox/DatabaseHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appoxee/inbox/DatabaseHelper;->getMessageDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/appoxee/AppoxeeClientException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 58
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 59
    .local v0, "e":Ljava/sql/SQLException;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to create new message in the SQL server. ID="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/appoxee/inbox/Message;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V
    :try_end_3
    .catch Lcom/appoxee/AppoxeeClientException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local v2    # "latestMessageDate":Ljava/lang/String;
    .end local v3    # "latestMessageDateServer":Ljava/lang/String;
    .end local v4    # "message":Lcom/appoxee/inbox/Message;
    .end local v5    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 76
    .local v0, "e":Lcom/appoxee/AppoxeeClientException;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 69
    .end local v0    # "e":Lcom/appoxee/AppoxeeClientException;
    .restart local v2    # "latestMessageDate":Ljava/lang/String;
    .restart local v3    # "latestMessageDateServer":Ljava/lang/String;
    .restart local v5    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    :cond_2
    :try_start_4
    const-string v7, "No new messages arrived."

    invoke-static {v7}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/appoxee/AppoxeeClientException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 77
    .end local v2    # "latestMessageDate":Ljava/lang/String;
    .end local v3    # "latestMessageDateServer":Ljava/lang/String;
    .end local v5    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/appoxee/inbox/Message;>;"
    :catch_2
    move-exception v7

    move-object v0, v7

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 73
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "latestMessageDate":Ljava/lang/String;
    .restart local v3    # "latestMessageDateServer":Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v7, "Not loading messages, because can\'t get server time."

    invoke-static {v7}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/appoxee/AppoxeeClientException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 79
    .end local v2    # "latestMessageDate":Ljava/lang/String;
    .end local v3    # "latestMessageDateServer":Ljava/lang/String;
    :catch_3
    move-exception v7

    move-object v0, v7

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 23
    aget-object v0, p1, v5

    .line 24
    .local v0, "queryType":Ljava/lang/String;
    const-string v1, "Update:"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v1, "Regular"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    invoke-direct {p0}, Lcom/appoxee/inbox/Update;->timeSinceLastUpdate()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 27
    invoke-virtual {p0, v0}, Lcom/appoxee/inbox/Update;->LoadDeviceMessages(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 32
    :goto_0
    return-object v1

    .line 29
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Lcom/appoxee/inbox/Update;->LoadDeviceMessages(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appoxee/inbox/Update;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
