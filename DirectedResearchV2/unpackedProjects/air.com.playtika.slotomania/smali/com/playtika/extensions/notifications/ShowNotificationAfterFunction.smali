.class public Lcom/playtika/extensions/notifications/ShowNotificationAfterFunction;
.super Ljava/lang/Object;
.source "ShowNotificationAfterFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 14
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 17
    const-wide/16 v9, -0x1

    .line 18
    .local v9, "wait":J
    const/4 v8, 0x0

    .line 19
    .local v8, "title":Ljava/lang/String;
    const/4 v3, 0x0

    .line 22
    .local v3, "contentText":Ljava/lang/String;
    const/4 v11, 0x0

    :try_start_0
    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v11

    int-to-long v9, v11

    .line 23
    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 24
    const/4 v11, 0x2

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 29
    :goto_0
    const-wide/16 v11, -0x1

    cmp-long v11, v9, v11

    if-eqz v11, :cond_0

    if-eqz v8, :cond_0

    if-nez v3, :cond_1

    .line 30
    :cond_0
    const/4 v11, 0x0

    .line 49
    :goto_1
    return-object v11

    .line 25
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 26
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 33
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 35
    .local v1, "activity":Landroid/app/Activity;
    new-instance v5, Landroid/content/Intent;

    const-class v11, Lcom/playtika/extensions/notifications/NotificationTimerService;

    invoke-direct {v5, v1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v5, "intent":Landroid/content/Intent;
    const-string v11, "extra_class"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 37
    const-string v11, "extra_title"

    invoke-virtual {v5, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v11, "extra_content_text"

    invoke-virtual {v5, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v11, "extra_icon_id"

    const-string v12, "drawable.appoxee_default_icon"

    invoke-virtual {p1, v12}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const/4 v11, 0x0

    .line 42
    const/high16 v12, 0x8000000

    .line 41
    invoke-static {v1, v11, v5, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 43
    .local v7, "pendingOperation":Landroid/app/PendingIntent;
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/notifications/LocalNotificationsContext;

    move-object v6, v0

    .line 44
    .local v6, "notificationsContext":Lcom/playtika/extensions/notifications/LocalNotificationsContext;
    invoke-virtual {v6, v7}, Lcom/playtika/extensions/notifications/LocalNotificationsContext;->setStartServicePendingIntent(Landroid/app/PendingIntent;)V

    .line 46
    const-string v11, "alarm"

    invoke-virtual {v1, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 47
    .local v2, "alarmMng":Landroid/app/AlarmManager;
    const/4 v11, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v9

    invoke-virtual {v2, v11, v12, v13, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 49
    const/4 v11, 0x0

    goto :goto_1
.end method
