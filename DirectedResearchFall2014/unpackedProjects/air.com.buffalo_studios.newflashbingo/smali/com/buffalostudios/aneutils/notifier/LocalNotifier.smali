.class public Lcom/buffalostudios/aneutils/notifier/LocalNotifier;
.super Ljava/lang/Object;
.source "LocalNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buffalostudios/aneutils/notifier/LocalNotifier$CancelNotification;,
        Lcom/buffalostudios/aneutils/notifier/LocalNotifier$Event;,
        Lcom/buffalostudios/aneutils/notifier/LocalNotifier$Init;,
        Lcom/buffalostudios/aneutils/notifier/LocalNotifier$ScheduleNotification;,
        Lcom/buffalostudios/aneutils/notifier/LocalNotifier$ScheduleNotificationRepeating;
    }
.end annotation


# static fields
.field private static final LOCAL_REQUEST_CODE:I = 0x5ab1ec

.field private static final TAG:Ljava/lang/String; = "LocalNotifier"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adobe/fre/FREContext;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/buffalostudios/aneutils/notifier/LocalNotifier;->cancelNotification(Lcom/adobe/fre/FREContext;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/adobe/fre/FREContext;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-static/range {p0 .. p6}, Lcom/buffalostudios/aneutils/notifier/LocalNotifier;->scheduleNotification(Lcom/adobe/fre/FREContext;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/adobe/fre/FREContext;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-static/range {p0 .. p8}, Lcom/buffalostudios/aneutils/notifier/LocalNotifier;->scheduleNotificationRepeating(Lcom/adobe/fre/FREContext;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static cancelNotification(Lcom/adobe/fre/FREContext;I)V
    .locals 6
    .parameter "context"
    .parameter "uid"

    .prologue
    .line 110
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/buffalostudios/aneutils/notifier/LocalNotifierReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x5ab1ec

    add-int/2addr v4, p1

    .line 113
    const/high16 v5, 0x800

    .line 111
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 114
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 115
    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    check-cast v0, Landroid/app/AlarmManager;

    .line 117
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 118
    return-void
.end method

.method public static onLocalMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    const-string v0, "LocalNotifier"

    const-string v1, "Wake lock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p0}, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->acquire(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Lcom/buffalostudios/aneutils/notifier/NotifierUtils;->encodeNotificationIntent(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, message:Ljava/lang/String;
    const-string v0, "LocalNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Local Message received..:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "LOCAL_MESSAGE_RECEIVED"

    invoke-static {v0, v2}, Lcom/buffalostudios/aneutils/ANEContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/buffalostudios/aneutils/ANEUtils;->getInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string p0, "LocalNotifier"

    .end local p0
    const-string p1, "LN = in foreground."

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 45
    .restart local p0
    .restart local p1
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 44
    check-cast v4, Landroid/app/NotificationManager;

    .line 46
    .local v4, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 47
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    .local v0, appContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 51
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "message"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, rawJson:Ljava/lang/String;
    move-object v6, v3

    .line 53
    .local v6, tickerText:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 54
    .end local v3           #rawJson:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 56
    .local v3, title:Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .end local p1
    const-string v7, "title"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local v3           #title:Ljava/lang/CharSequence;
    .local p1, title:Ljava/lang/CharSequence;
    move-object v7, p1

    .line 61
    .end local p1           #title:Ljava/lang/CharSequence;
    .local v7, title:Ljava/lang/CharSequence;
    :goto_1
    new-instance v3, Landroid/app/Notification;

    iget p1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 61
    invoke-direct {v3, p1, v6, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 63
    .local v3, notification:Landroid/app/Notification;
    iget p1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1f

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 67
    iget p1, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 68
    iget p1, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 69
    iget p1, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 p1, p1, 0x3

    iput p1, v3, Landroid/app/Notification;->defaults:I

    .line 71
    const/16 p1, 0x3e8

    iput p1, v3, Landroid/app/Notification;->ledOnMS:I

    .line 72
    const/16 p1, 0x3e8

    iput p1, v3, Landroid/app/Notification;->ledOffMS:I

    .line 73
    const/4 p1, -0x1

    iput p1, v3, Landroid/app/Notification;->ledARGB:I

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 77
    .local p1, packageName:Ljava/lang/String;
    const-string v0, "LocalNotifier"

    .end local v0           #appContext:Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    const-string v8, "LMPN:"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 80
    .local p1, launchIntent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .end local p1           #launchIntent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 81
    .local p1, launchClassName:Ljava/lang/String;
    const-string v0, "LocalNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "LLCN:"

    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 85
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 84
    .end local p1           #launchClassName:Ljava/lang/String;
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    .local v0, notificationIntent:Landroid/content/Intent;
    const-string p1, "bufLocal"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const/high16 p1, 0x2400

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    const/4 p1, 0x0

    .line 98
    const/high16 v1, 0x800

    .line 97
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 100
    .local p1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v3, p0, v7, v6, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 102
    iget p0, v3, Landroid/app/Notification;->flags:I

    .end local p0
    or-int/lit8 p0, p0, 0x10

    iput p0, v3, Landroid/app/Notification;->flags:I

    .line 103
    const/4 p0, 0x0

    invoke-virtual {v4, p0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 105
    const-string p0, "LocalNotifier"

    const-string p1, "release lock"

    .end local p1           #pendingIntent:Landroid/app/PendingIntent;
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->release()V

    goto/16 :goto_0

    .line 57
    .end local v7           #title:Ljava/lang/CharSequence;
    .local v0, appContext:Landroid/content/Context;
    .restart local v1       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .local v3, title:Ljava/lang/CharSequence;
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    .restart local p0
    :catch_0
    move-exception p1

    .line 58
    .local p1, e:Ljava/lang/Exception;
    const-string v7, "LocalNotifier"

    const-string v8, "Local Message parse failed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v3

    .end local v3           #title:Ljava/lang/CharSequence;
    .restart local v7       #title:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 86
    .end local v0           #appContext:Landroid/content/Context;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    .end local p1           #e:Ljava/lang/Exception;
    .local v3, notification:Landroid/app/Notification;
    :catch_1
    move-exception p0

    .line 87
    .local p0, e:Ljava/lang/Exception;
    const-string p1, "LocalNotifier"

    const-string v0, "Failed to locate the air main intent."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static scheduleNotification(Lcom/adobe/fre/FREContext;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "uid"
    .parameter "timeSeconds"
    .parameter "title"
    .parameter "message"
    .parameter "extraData"

    .prologue
    .line 124
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/buffalostudios/aneutils/notifier/LocalNotifierReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "message"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v3, "title"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v3, "extraData"

    invoke-virtual {v1, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x5ab1ec

    add-int/2addr v4, p1

    .line 130
    const/high16 v5, 0x800

    .line 128
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 132
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 133
    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    check-cast v0, Landroid/app/AlarmManager;

    .line 135
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    .line 136
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p2

    .line 135
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 138
    return-void
.end method

.method private static scheduleNotificationRepeating(Lcom/adobe/fre/FREContext;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "uid"
    .parameter "firstTimeSeconds"
    .parameter "thenEverySeconds"
    .parameter "title"
    .parameter "message"
    .parameter "extraData"

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/buffalostudios/aneutils/notifier/LocalNotifierReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string p7, "title"

    .end local p7
    invoke-virtual {v0, p7, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string p6, "extraData"

    .end local p6
    invoke-virtual {v0, p6, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p6

    const p7, 0x5ab1ec

    add-int/2addr p1, p7

    .line 150
    const/high16 p7, 0x800

    .line 148
    invoke-static {p6, p1, v0, p7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .end local p1
    move-result-object v6

    .line 152
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .line 153
    .end local p0
    const-string p1, "alarm"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .end local v0           #intent:Landroid/content/Intent;
    check-cast v0, Landroid/app/AlarmManager;

    .line 155
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    .line 156
    const-wide/16 p0, 0x3e8

    mul-long v2, p2, p0

    .line 157
    const-wide/16 p0, 0x3e8

    mul-long v4, p4, p0

    .line 155
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 159
    return-void
.end method
