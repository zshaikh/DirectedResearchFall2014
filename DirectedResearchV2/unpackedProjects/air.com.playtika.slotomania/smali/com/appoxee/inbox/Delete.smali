.class public Lcom/appoxee/inbox/Delete;
.super Landroid/os/AsyncTask;
.source "Delete.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
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
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 11
    .param p1, "forDelete"    # [Ljava/lang/Integer;

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 22
    .local v0, "deletedMessages":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    array-length v9, p1

    if-lt v5, v9, :cond_1

    .line 44
    if-lez v0, :cond_0

    .line 45
    new-instance v4, Landroid/content/Intent;

    const-string v9, "APPOXEE_INBOX_UPDATE"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, "inboxUpdate":Landroid/content/Intent;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    .end local v4    # "inboxUpdate":Landroid/content/Intent;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9

    .line 23
    :cond_1
    aget-object v9, p1, v5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v2, v9

    .line 26
    .local v2, "id":J
    :try_start_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getHelper()Lcom/appoxee/inbox/DatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/appoxee/inbox/DatabaseHelper;->getMessageDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/appoxee/inbox/Message;

    .line 27
    .local v7, "message":Lcom/appoxee/inbox/Message;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/appoxee/inbox/Message;->setRead(Z)V

    .line 28
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/appoxee/inbox/Message;->setDeleted(Z)V

    .line 29
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getHelper()Lcom/appoxee/inbox/DatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/appoxee/inbox/DatabaseHelper;->getMessageDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v9

    invoke-interface {v9, v7}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v9

    add-int/2addr v0, v9

    .line 33
    const-string v8, "notification"

    .line 34
    .local v8, "ns":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 35
    invoke-virtual {v9, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 34
    check-cast v6, Landroid/app/NotificationManager;

    .line 37
    .local v6, "mNotificationManager":Landroid/app/NotificationManager;
    long-to-int v9, v2

    invoke-virtual {v6, v9}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .end local v6    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v7    # "message":Lcom/appoxee/inbox/Message;
    .end local v8    # "ns":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 40
    .local v1, "e":Ljava/sql/SQLException;
    invoke-static {v1}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/appoxee/inbox/Delete;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
