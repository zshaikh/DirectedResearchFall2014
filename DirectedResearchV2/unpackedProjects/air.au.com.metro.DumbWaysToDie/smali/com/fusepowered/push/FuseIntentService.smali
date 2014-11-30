.class public Lcom/fusepowered/push/FuseIntentService;
.super Lcom/fusepowered/push/FuseGCMBaseIntentService;
.source "FuseIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fusepowered/push/FuseGCMBaseIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "FuseIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got an error  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 30
    const-string v9, "title"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, "title":Ljava/lang/String;
    const-string v9, "text"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "msg":Ljava/lang/String;
    const-string v9, "name"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 36
    :cond_0
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appNameDisplay:Ljava/lang/String;

    .line 38
    :cond_1
    new-instance v5, Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    invoke-direct {v5, p1}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    .local v5, "notibuilder":Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    invoke-virtual {v5, v7}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 41
    invoke-virtual {v5, v2}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 42
    sget v9, Lcom/fusepowered/fuseapi/FuseAPI;->iconID:I

    invoke-virtual {v5, v9}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setSmallIcon(I)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 43
    invoke-virtual {v5, v3}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".fusepowered.push.FuseRecordGCMResponse"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "intentString":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v11, v9, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 46
    .local v0, "intent":Landroid/app/PendingIntent;
    invoke-virtual {v5, v0}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 48
    sget v9, Lcom/fusepowered/fuseapi/FuseAPI;->drawerIconID:I

    if-eqz v9, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/fusepowered/fuseapi/FuseAPI;->drawerIconID:I

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 51
    .local v8, "x":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v8}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 53
    .end local v8    # "x":Landroid/graphics/Bitmap;
    :cond_2
    const-string v9, "notification_id"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/fusepowered/fuseapi/FuseAPI;->notificationID:Ljava/lang/String;

    .line 55
    const-string v9, "PUSH NOTIFICATION"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "This is the notification id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/fusepowered/fuseapi/FuseAPI;->notificationID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 58
    .local v6, "notifManager":Landroid/app/NotificationManager;
    invoke-virtual {v5}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 60
    .local v4, "note":Landroid/app/Notification;
    const/16 v9, 0x14

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 61
    sget-object v9, Lcom/fusepowered/fuseapi/FuseAPI;->notificationID:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 62
    return-void
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p2}, Lcom/fusepowered/fuseapi/FuseAPI;->registerGCM(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 77
    return-void
.end method
