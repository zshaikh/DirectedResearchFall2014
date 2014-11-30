.class public Lcom/stuv/ane/pushnotif/PushNotifWrapper;
.super Ljava/lang/Object;
.source "PushNotifWrapper.java"


# static fields
.field private static RECURRENCE_DAY:I

.field private static RECURRENCE_MONTH:I

.field private static RECURRENCE_NONE:I

.field private static RECURRENCE_WEEK:I

.field private static RECURRENCE_YEAR:I

.field private static TAG:Ljava/lang/String;

.field private static _baseActivity:Landroid/app/Activity;

.field private static _context:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->RECURRENCE_NONE:I

    .line 18
    const/4 v0, 0x1

    sput v0, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->RECURRENCE_DAY:I

    .line 19
    const/4 v0, 0x2

    sput v0, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->RECURRENCE_WEEK:I

    .line 20
    const/4 v0, 0x3

    sput v0, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->RECURRENCE_MONTH:I

    .line 21
    const/4 v0, 0x4

    sput v0, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->RECURRENCE_YEAR:I

    .line 23
    const-string v0, "PushNotif"

    sput-object v0, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "baseActivity"    # Landroid/app/Activity;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 27
    sput-object p1, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 29
    sput-object p0, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->_baseActivity:Landroid/app/Activity;

    .line 30
    return-void
.end method

.method public static localNotification(Ljava/lang/String;JLjava/lang/String;)V
    .locals 11
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "timestamp"    # J
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 70
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Amazon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    sget-object v1, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->TAG:Ljava/lang/String;

    const-string v2, "push notifications disabled on amazon devices, ignoring local notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 76
    :cond_0
    if-eqz p0, :cond_7

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_7

    .line 78
    sget-object v2, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->_context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v2}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 79
    .local v7, "appContext":Landroid/content/Context;
    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 81
    .local v8, "cal":Ljava/util/Calendar;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    .line 83
    sget-object v1, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->TAG:Ljava/lang/String;

    const-string v2, "timestamp is older than current time"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_1
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/stuv/ane/pushnotif/LocalBroadcastReceiver;

    invoke-direct {v9, v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v9, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_2

    .line 91
    const-string v2, "contentTitle"

    invoke-virtual {v9, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_2
    const-string v2, "contentText"

    invoke-virtual {v9, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const v2, 0x2f145

    const/high16 v3, 0x8000000

    invoke-static {v7, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 97
    .local v6, "sender":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {v7, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 99
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 101
    const/4 v10, 0x0

    .line 103
    .local v10, "recurrenceType":I
    sget v2, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->RECURRENCE_DAY:I

    if-ne v10, v2, :cond_3

    .line 105
    const-wide/32 v4, 0x5265c00

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 118
    :goto_1
    sget-object v1, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setting params to run at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_3
    sget v2, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->RECURRENCE_WEEK:I

    if-ne v10, v2, :cond_4

    .line 107
    const-wide/32 v4, 0x240c8400

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 108
    :cond_4
    sget v2, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->RECURRENCE_MONTH:I

    if-ne v10, v2, :cond_5

    .line 110
    const-wide/32 v4, 0x39777800

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 111
    :cond_5
    sget v2, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->RECURRENCE_YEAR:I

    if-ne v10, v2, :cond_6

    .line 113
    const-wide/32 v4, 0x65d83400

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 116
    :cond_6
    invoke-virtual {v0, v1, p1, p2, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 121
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v6    # "sender":Landroid/app/PendingIntent;
    .end local v7    # "appContext":Landroid/content/Context;
    .end local v8    # "cal":Ljava/util/Calendar;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "recurrenceType":I
    :cond_7
    sget-object v1, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->TAG:Ljava/lang/String;

    const-string v2, "cannot set local notification, not enough params"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static register(Ljava/lang/String;)V
    .locals 9
    .param p0, "emailAdress"    # Ljava/lang/String;

    .prologue
    const-string v8, "REGISTERING"

    .line 34
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Amazon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    sget-object v3, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->TAG:Ljava/lang/String;

    const-string v4, "push notifications disabled on amzon devices, ignoring register"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 40
    :cond_0
    if-nez p0, :cond_1

    .line 42
    sget-object v3, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->TAG:Ljava/lang/String;

    const-string v4, "emailAdress is null. Cannot register the device."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_1
    sget-object v3, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->_context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v3}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    .local v0, "appContext":Landroid/content/Context;
    sget-object v3, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "C2DMRegisterFunction.call "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, "registrationIntent":Landroid/content/Intent;
    const-string v3, "app"

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    sget-object v3, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "intent with extras "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v7, 0x0

    invoke-static {v0, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v3, "sender"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    sget-object v3, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v4, "REGISTERING"

    const-string v5, "success"

    invoke-virtual {v3, v4, v5}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v2    # "registrationIntent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v4, "REGISTERING"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v3, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Error sending registration intent."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static setIsAppInForeground(Z)V
    .locals 0
    .param p0, "isInForeground"    # Z

    .prologue
    .line 65
    sput-boolean p0, Lcom/stuv/ane/pushnotif/Extension;->isInForeground:Z

    .line 66
    return-void
.end method
