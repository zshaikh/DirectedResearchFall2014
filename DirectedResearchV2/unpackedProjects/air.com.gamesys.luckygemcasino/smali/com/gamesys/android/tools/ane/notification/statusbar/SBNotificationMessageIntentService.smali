.class public Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;
.super Landroid/app/IntentService;
.source "SBNotificationMessageIntentService.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private static isNotificationFromAlertManager(Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "result":Z
    if-eqz p0, :cond_0

    .line 127
    const-string v2, "from"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "from":Ljava/lang/String;
    sget-object v2, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 130
    .end local v0    # "from":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "This notification is "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v2, ""

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "from AlarmManager"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v1

    .line 130
    :cond_1
    const-string v2, "<NOT> "

    goto :goto_0
.end method

.method public static routeIncomingIntent(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->isNotificationCloudMessage(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-static {p0}, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->isNotificationFromAlertManager(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p1}, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->createAlarmForSBNotification(Landroid/content/Context;)V

    .line 114
    :cond_0
    invoke-static {p0, p1}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->createNotificationFromBundle(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_1
    sget-object v0, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This is not a notification cloud message but a : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->getCMType(Landroid/os/Bundle;)Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getExtrasFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getExtrasFromIntent: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 68
    invoke-static {v0}, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->isNotificationFromAlertManager(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 73
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string v3, "com.amazon.device.messaging.intent.RECEIVE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    const-string v4, "Message from Amazon Device Messaging service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_1
    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    const-string v4, "Message from Google Cloud Messaging service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    .line 81
    .local v1, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-virtual {v1, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "messageType":Ljava/lang/String;
    const-string v3, "send_error"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SendError: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v1    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v2    # "messageType":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    .restart local v1    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .restart local v2    # "messageType":Ljava/lang/String;
    :cond_3
    const-string v3, "deleted_messages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 91
    :cond_4
    const-string v3, "gcm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    const-string v2, "onHandleIntent: enterring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0, p1}, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->getExtrasFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received, now routing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->routeIncomingIntent(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 50
    :goto_0
    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 51
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    const-string v2, "onHandleIntent: leaving"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 46
    :cond_0
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/statusbar/SBNotificationMessageIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Null Bundle, no cloud message to process"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
