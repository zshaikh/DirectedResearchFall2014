.class public Lcom/bitrhymes/nativeutils/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "GCMIntentService"

    sput-object v0, Lcom/bitrhymes/nativeutils/GCMIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/bitrhymes/nativeutils/utils/Utils;->PUSH_SENDER_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 29
    const-string v0, "GCMIntentService"

    const-string v1, "blank constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "senderId"

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 34
    const-string v0, "GCMIntentService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public static getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "packageName"
    .parameter "className"
    .parameter "name"

    .prologue
    const-string v3, ".R"

    .line 175
    const/4 v2, 0x0

    .line 178
    .local v2, id:I
    const/4 v1, 0x0

    .local v1, i:I
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

    .line 192
    :goto_2
    return v3

    .line 180
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

    const-string v4, "\\$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
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

    .line 183
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

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 184
    goto/16 :goto_1

    .line 178
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 188
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 190
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, -0x1

    goto/16 :goto_2
.end method

.method private writeData(Ljava/lang/String;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    const-string p1, ""

    .line 160
    :cond_0
    :try_start_0
    sget-object v3, Lcom/bitrhymes/nativeutils/GCMIntentService;->TAG:Ljava/lang/String;

    const-string v4, " track msg : writeData "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v3, "bgpush.txt"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/bitrhymes/nativeutils/GCMIntentService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 162
    .local v1, fOut:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 163
    .local v2, osw:Ljava/io/OutputStreamWriter;
    invoke-virtual {v2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 165
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 167
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 169
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "GCMIntentService"

    const-string v1, " ServiceClassName  onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0}, Lcom/google/android/gcm/GCMBaseIntentService;->onCreate()V

    .line 40
    return-void
.end method

.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "errorId"

    .prologue
    const-string v4, "GCMIntentService"

    .line 198
    const-string v2, "GCMIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending error-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/bitrhymes/nativeutils/NativeUtilsContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v1

    .line 201
    .local v1, freContext:Lcom/adobe/fre/FREContext;
    if-eqz v1, :cond_0

    .line 202
    :try_start_0
    const-string v2, "PUSH_ON_ERROR"

    invoke-virtual {v1, v2, p2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 207
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GCMIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in push--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    const-string v20, "GCMIntentService"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "sending onMessage-"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 87
    .local v13, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x80

    move-object v0, v13

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 89
    .local v5, ai:Landroid/content/pm/ApplicationInfo;
    iget v11, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 91
    .local v11, iconID:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 92
    .local v6, bundleObj:Landroid/os/Bundle;
    const-string v20, "Text"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 93
    .local v14, message:Ljava/lang/String;
    const-string v20, "Track"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 94
    .local v17, trackMsg:Ljava/lang/String;
    sget-object v20, Lcom/bitrhymes/nativeutils/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, " track msg : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/bitrhymes/nativeutils/GCMIntentService;->writeData(Ljava/lang/String;)V

    .line 99
    const-string v16, "notification"

    .line 100
    .local v16, ns:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 101
    .local v12, mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 104
    .local v18, when:J
    new-instance v15, Landroid/app/Notification;

    move-object v0, v15

    move v1, v11

    move-object v2, v14

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 106
    .local v15, notification:Landroid/app/Notification;
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "layout"

    const-string v23, "custom_notification_layout"

    invoke-static/range {v21 .. v23}, Lcom/bitrhymes/nativeutils/GCMIntentService;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 106
    move-object v0, v8

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 109
    .local v8, contentView:Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "id"

    const-string v22, "notImg"

    invoke-static/range {v20 .. v22}, Lcom/bitrhymes/nativeutils/GCMIntentService;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 108
    move-object v0, v8

    move/from16 v1, v20

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "id"

    const-string v22, "notTxt"

    invoke-static/range {v20 .. v22}, Lcom/bitrhymes/nativeutils/GCMIntentService;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 110
    move-object v0, v8

    move/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 113
    iput-object v8, v15, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 115
    new-instance v10, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v10, i:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 119
    if-nez v10, :cond_0

    .line 120
    const-string v20, "GCMIntentService"

    .line 121
    const-string v21, "Package intent not found. Please make sure that the package is specified correctly."

    .line 120
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #bundleObj:Landroid/os/Bundle;
    .end local v8           #contentView:Landroid/widget/RemoteViews;
    .end local v10           #i:Landroid/content/Intent;
    .end local v11           #iconID:I
    .end local v12           #mNotificationManager:Landroid/app/NotificationManager;
    .end local v14           #message:Ljava/lang/String;
    .end local v15           #notification:Landroid/app/Notification;
    .end local v16           #ns:Ljava/lang/String;
    .end local v17           #trackMsg:Ljava/lang/String;
    .end local v18           #when:J
    :goto_0
    return-void

    .line 127
    .restart local v5       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #bundleObj:Landroid/os/Bundle;
    .restart local v8       #contentView:Landroid/widget/RemoteViews;
    .restart local v10       #i:Landroid/content/Intent;
    .restart local v11       #iconID:I
    .restart local v12       #mNotificationManager:Landroid/app/NotificationManager;
    .restart local v14       #message:Ljava/lang/String;
    .restart local v15       #notification:Landroid/app/Notification;
    .restart local v16       #ns:Ljava/lang/String;
    .restart local v17       #trackMsg:Ljava/lang/String;
    .restart local v18       #when:J
    :cond_0
    const-string v20, "android.intent.category.LAUNCHER"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object v2, v10

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 129
    .local v7, contentIntent:Landroid/app/PendingIntent;
    iput-object v7, v15, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 133
    move-object v0, v15

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x10

    move/from16 v0, v20

    move-object v1, v15

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 134
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v15

    iput v0, v1, Landroid/app/Notification;->number:I

    .line 135
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v15

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 137
    const/16 v20, 0x0

    move-object v0, v12

    move/from16 v1, v20

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #bundleObj:Landroid/os/Bundle;
    .end local v7           #contentIntent:Landroid/app/PendingIntent;
    .end local v8           #contentView:Landroid/widget/RemoteViews;
    .end local v10           #i:Landroid/content/Intent;
    .end local v11           #iconID:I
    .end local v12           #mNotificationManager:Landroid/app/NotificationManager;
    .end local v14           #message:Ljava/lang/String;
    .end local v15           #notification:Landroid/app/Notification;
    .end local v16           #ns:Ljava/lang/String;
    .end local v17           #trackMsg:Ljava/lang/String;
    .end local v18           #when:J
    :catch_0
    move-exception v20

    move-object/from16 v9, v20

    .line 140
    .local v9, e:Ljava/lang/Exception;
    const-string v20, "GCMIntentService"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Error: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "errorId"

    .prologue
    const-string v4, "GCMIntentService"

    .line 217
    const-string v2, "GCMIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending errorId-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Lcom/bitrhymes/nativeutils/NativeUtilsContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v1

    .line 221
    .local v1, freContext:Lcom/adobe/fre/FREContext;
    if-eqz v1, :cond_0

    .line 222
    :try_start_0
    const-string v2, "PUSH_ON_REC_ERROR"

    invoke-virtual {v1, v2, p2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 225
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 227
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GCMIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in push--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "regId"

    .prologue
    const-string v5, "GCMIntentService"

    .line 47
    const-string v2, "GCMIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending onRegistered push reg id-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_start_0
    invoke-static {}, Lcom/bitrhymes/nativeutils/NativeUtilsContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v1

    .line 51
    .local v1, freContext:Lcom/adobe/fre/FREContext;
    if-eqz v1, :cond_0

    .line 52
    const-string v2, "PUSH_REG_ID_EVENT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "success,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1           #freContext:Lcom/adobe/fre/FREContext;
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 57
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GCMIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in push--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "regId"

    .prologue
    const-string v5, "GCMIntentService"

    .line 64
    const-string v2, "GCMIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending onUnregistered push reg id-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :try_start_0
    invoke-static {}, Lcom/bitrhymes/nativeutils/NativeUtilsContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v1

    .line 69
    .local v1, freContext:Lcom/adobe/fre/FREContext;
    if-eqz v1, :cond_0

    .line 70
    const-string v2, "PUSH_UNREG_ID_EVENT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "success,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1           #freContext:Lcom/adobe/fre/FREContext;
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 75
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GCMIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in push--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
