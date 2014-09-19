.class public Lcom/bitrhymes/nativeutils/localnotify/SetNotificationAfterHour;
.super Ljava/lang/Object;
.source "SetNotificationAfterHour.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static notificationcount:I


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/bitrhymes/nativeutils/localnotify/SetNotificationAfterHour;->notificationcount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "SetNotificationAfterHour"

    iput-object v0, p0, Lcom/bitrhymes/nativeutils/localnotify/SetNotificationAfterHour;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .parameter "context"
    .parameter "arg1"

    .prologue
    .line 31
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, title:Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, tickerText:Ljava/lang/String;
    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, message:Ljava/lang/String;
    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, packageName:Ljava/lang/String;
    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, hour:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetNotificationAfterHour-> title:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tickerText:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",hour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bitrhymes/nativeutils/localnotify/SetNotificationAfterHour;->debugLog(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bitrhymes/nativeutils/localnotify/SetNotificationAfterHour;->startAlarms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #tickerText:Ljava/lang/String;
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #hour:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 39
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 41
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public debugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 23
    const-string v0, "SetNotificationAfterHour"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public startAlarms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "context"
    .parameter "src_title"
    .parameter "src_scroll"
    .parameter "src_text"
    .parameter "src_package"
    .parameter "hour"

    .prologue
    .line 48
    const-string v11, "SetNotificationAfterHour"

    const-string v12, "******startAlarms*** SetNotificationAfterHour ***"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v11, 0x0

    sput v11, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->notificationcount:I

    .line 51
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;

    invoke-direct {v7, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v7, i:Landroid/content/Intent;
    const-class v11, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;

    invoke-virtual {v7, p1, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 55
    const-string v11, "src_title"

    move-object v0, v7

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v11, "src_scroll"

    move-object v0, v7

    move-object v1, v11

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v11, "src_text"

    move-object v0, v7

    move-object v1, v11

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v11, "src_package"

    move-object v0, v7

    move-object v1, v11

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/4 v10, 0x0

    .line 66
    .local v10, timeIntervalForNextAlert:I
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 67
    move v5, v10

    .line 69
    .local v5, counter:I
    sget v11, Lcom/bitrhymes/nativeutils/utils/Utils;->requestCode1:I

    mul-int/lit8 v12, v5, 0xa

    add-int/2addr v11, v12

    const/high16 v12, 0x800

    invoke-static {p1, v11, v7, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 72
    .local v8, sender1:Landroid/app/PendingIntent;
    const-string v11, "alarm"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 74
    .local v3, am:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 75
    .local v4, cal:Ljava/util/Calendar;
    const/16 v11, 0xa

    invoke-virtual {v4, v11, v10}, Ljava/util/Calendar;->add(II)V

    .line 77
    const/4 v11, 0x1

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v3, v11, v12, v13, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 79
    const-string v11, "local-notification"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 80
    .local v9, settings:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 82
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    const-string v11, "SetNotificationAfterHour"

    const-string v12, "***set alarm***"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
