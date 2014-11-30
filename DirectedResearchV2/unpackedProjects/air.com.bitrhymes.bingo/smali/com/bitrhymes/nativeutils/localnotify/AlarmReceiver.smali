.class public Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field public static notificationcount:I


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->notificationcount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const-string v0, "LocalNotification"

    iput-object v0, p0, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const-string v3, ".R"

    .line 117
    const/4 v2, 0x0

    .line 119
    .local v2, "id":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".R"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-lt v1, v3, :cond_1

    :cond_0
    :goto_1
    move v3, v2

    .line 133
    :goto_2
    return v3

    .line 120
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".R"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 121
    const-string v4, "\\$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 120
    aget-object v3, v3, v4

    .line 121
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".R"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".R"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v1

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 125
    const-string v3, "Alarm Mang == "

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " *** = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 130
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    goto/16 :goto_2

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "LocalNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "============================================"

    .line 26
    const-string v0, "AlarmReceiver.->onReceive"

    invoke-virtual {p0, v0}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->debugLog(Ljava/lang/String;)V

    .line 28
    const-string v0, "LocalNotification"

    const-string v1, "*** alarm onReceive ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v0, "src_text"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "src_text":Ljava/lang/String;
    const-string v0, "src_title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "src_title":Ljava/lang/String;
    const-string v0, "src_scroll"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "src_scroll":Ljava/lang/String;
    const-string v0, "src_package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "src_package":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 40
    .local v9, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v9, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 42
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    iget v5, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 43
    .local v5, "iconID":I
    const-string v0, "============================================"

    invoke-virtual {p0, v0}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->debugLog(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iconid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->debugLog(Ljava/lang/String;)V

    .line 45
    const-string v0, "============================================"

    invoke-virtual {p0, v0}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->debugLog(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    .line 47
    invoke-virtual/range {v0 .. v6}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v5    # "iconID":I
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 50
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 51
    const-string v0, "current package name not found. hence no notification set"

    invoke-virtual {p0, v0}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "tickerText"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "icon"    # I
    .param p6, "packagename"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    const-string v15, "1.step"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->debugLog(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 61
    .local v10, "manager":Landroid/content/pm/PackageManager;
    const-string v15, "2.step"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->debugLog(Ljava/lang/String;)V

    .line 63
    const-string v12, "notification"

    .line 64
    .local v12, "ns":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 65
    .local v9, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 68
    .local v13, "when":J
    new-instance v11, Landroid/app/Notification;

    move-object v0, v11

    move/from16 v1, p5

    move-object/from16 v2, p3

    move-wide v3, v13

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 69
    .local v11, "notification":Landroid/app/Notification;
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v8, "i":Landroid/content/Intent;
    const-string v15, "AlarmReceiver"

    move-object v0, v15

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    move-object v0, v10

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 73
    if-nez v8, :cond_0

    .line 74
    const-string v15, "Package intent not found. Please make sure that the package is specified correctly."

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->debugLog(Ljava/lang/String;)V

    .line 114
    .end local v8    # "i":Landroid/content/Intent;
    .end local v9    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v10    # "manager":Landroid/content/pm/PackageManager;
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v12    # "ns":Ljava/lang/String;
    .end local v13    # "when":J
    :goto_0
    return-void

    .line 80
    .restart local v8    # "i":Landroid/content/Intent;
    .restart local v9    # "mNotificationManager":Landroid/app/NotificationManager;
    .restart local v10    # "manager":Landroid/content/pm/PackageManager;
    .restart local v11    # "notification":Landroid/app/Notification;
    .restart local v12    # "ns":Ljava/lang/String;
    .restart local v13    # "when":J
    :cond_0
    const-string v15, "LocalNotification"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "pkg name == "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 83
    const-string v17, "layout"

    const-string v18, "custom_notification_layout"

    .line 82
    invoke-static/range {v16 .. v18}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 81
    move-object v0, v6

    move-object v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 85
    .local v6, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "id"

    const-string v17, "notImg"

    .line 84
    invoke-static/range {v15 .. v17}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object v0, v6

    move v1, v15

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "id"

    const-string v17, "notTxt"

    .line 86
    invoke-static/range {v15 .. v17}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object v0, v6

    move v1, v15

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 89
    iput-object v6, v11, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 91
    const-string v15, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move v1, v15

    move-object v2, v8

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 93
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    iput-object v5, v11, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 96
    iget v15, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v15, v15, 0x10

    iput v15, v11, Landroid/app/Notification;->flags:I

    .line 97
    const/4 v15, 0x1

    iput v15, v11, Landroid/app/Notification;->number:I

    .line 98
    const/4 v15, 0x1

    iput v15, v11, Landroid/app/Notification;->defaults:I

    .line 106
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 109
    const-string v15, "Notified"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 110
    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    .end local v6    # "contentView":Landroid/widget/RemoteViews;
    .end local v8    # "i":Landroid/content/Intent;
    .end local v9    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v10    # "manager":Landroid/content/pm/PackageManager;
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v12    # "ns":Ljava/lang/String;
    .end local v13    # "when":J
    :catch_0
    move-exception v15

    move-object v7, v15

    .line 111
    .local v7, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Error: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/bitrhymes/nativeutils/localnotify/AlarmReceiver;->debugLog(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
