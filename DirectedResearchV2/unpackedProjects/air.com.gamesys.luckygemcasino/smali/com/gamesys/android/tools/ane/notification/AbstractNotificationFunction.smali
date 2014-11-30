.class public abstract Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "AbstractNotificationFunction.java"


# static fields
.field protected static final TAG:Ljava/lang/String;

.field protected static resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method

.method protected static buildAndShowNotification(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/widget/RemoteViews;IZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ticker"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "tickerBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "remoteView"    # Landroid/widget/RemoteViews;
    .param p5, "smallIconId"    # I
    .param p6, "replaceOldNotifications"    # Z

    .prologue
    .line 210
    const/4 v5, 0x0

    .line 213
    .local v5, "intent":Landroid/content/Intent;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "AppEntry"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "className":Ljava/lang/String;
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v5    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    move-object v5, v6

    .line 222
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v9, 0x0

    .line 223
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v5, :cond_0

    .line 224
    const/high16 v10, 0x10000000

    invoke-static {p0, p2, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 227
    :cond_0
    new-instance v10, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v10, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    move/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 230
    invoke-virtual {v10, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 232
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 236
    invoke-virtual {v10, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 239
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static {p0}, Lcom/gamesys/android/common/tools/ToolsBox;->getInstallerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "installer":Ljava/lang/String;
    const-string v10, "AMAZON_APP_STORE"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 242
    const-string v10, "GOOGLE_PLAY_STORE"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 244
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 247
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 250
    .local v8, "not":Landroid/app/Notification;
    move-object/from16 v0, p4

    iput-object v0, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 252
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 255
    .local v7, "mNotificationManager":Landroid/app/NotificationManager;
    if-eqz p6, :cond_2

    .line 256
    invoke-virtual {v7}, Landroid/app/NotificationManager;->cancelAll()V

    .line 258
    :cond_2
    invoke-virtual {v7, p2, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 259
    return-void

    .line 216
    .end local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "installer":Ljava/lang/String;
    .end local v7    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v8    # "not":Landroid/app/Notification;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Ljava/lang/IllegalStateException;
    sget-object v10, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unable to create the pending intent for the main activity : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 218
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .line 219
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-object v10, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unable to create the pending intent for the main activity : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static convertDimToPixel(Landroid/content/Context;F)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sp"    # F

    .prologue
    .line 269
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 270
    .local v0, "value":F
    return v0
.end method

.method public static createNotification(Landroid/content/Context;Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 18
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "ticker"    # Ljava/lang/String;
    .param p5, "titleTextSize"    # I
    .param p6, "messageTextSize"    # I
    .param p7, "titleColor"    # Ljava/lang/String;
    .param p8, "messageColor"    # Ljava/lang/String;
    .param p9, "senderId"    # Ljava/lang/String;
    .param p10, "id"    # I
    .param p11, "replaceOldNotifications"    # Z
    .param p12, "textFieldsMaxWidthPercent"    # I
    .param p13, "notifIcon"    # Landroid/graphics/Bitmap;
    .param p14, "notifBackground"    # Landroid/graphics/Bitmap;
    .param p15, "tickerIcon"    # Landroid/graphics/Bitmap;
    .param p16, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 121
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->TAG:Ljava/lang/String;

    const-string v4, "Android context is null, no notification will be shown"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local p5    # "titleTextSize":I
    .end local p6    # "messageTextSize":I
    :goto_0
    return-void

    .line 126
    .restart local p5    # "titleTextSize":I
    .restart local p6    # "messageTextSize":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p16

    invoke-static {v3, v0, v1, v2}, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->populateResourcesMap(Ljava/lang/String;Lcom/adobe/fre/FREContext;Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v15, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v3, "\t{"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "} Title = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v3, "\t{"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "} Message = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v3, "\tTicker = \'"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v3, "\tBM-Icon-Small = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p15, :cond_7

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, "BM-Icon-Big = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p13, :cond_8

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p13 .. p13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    invoke-virtual/range {p13 .. p13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v3, "BM-Background = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p14, :cond_9

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p14 .. p14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    invoke-virtual/range {p14 .. p14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-1-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Notification is being built: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "layout.notification_cm"

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v7, v4, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 143
    .local v7, "remoteViews":Landroid/widget/RemoteViews;
    if-eqz p14, :cond_1

    .line 144
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_background"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "setImageBitmap"

    move-object/from16 v0, p14

    invoke-virtual {v7, v3, v4, v0}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 147
    :cond_1
    if-eqz p13, :cond_2

    .line 148
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_icon"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "setImageBitmap"

    move-object/from16 v0, p13

    invoke-virtual {v7, v3, v4, v0}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 151
    :cond_2
    move-object/from16 v16, p7

    .line 152
    .local v16, "titleColorStr":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_3

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 155
    :cond_3
    move-object/from16 v12, p8

    .line 156
    .local v12, "messageColorStr":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 160
    :cond_4
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_title"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v3, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 161
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_message"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v3, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 163
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_title"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "setText"

    move-object/from16 v0, p2

    invoke-virtual {v7, v3, v4, v0}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 164
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_message"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "setText"

    move-object/from16 v0, p3

    invoke-virtual {v7, v3, v4, v0}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 166
    const/4 v3, -0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_5

    const/16 p5, 0x12

    .end local p5    # "titleTextSize":I
    :cond_5
    move/from16 v0, p5

    int-to-float v3, v0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->convertDimToPixel(Landroid/content/Context;F)F

    move-result v17

    .line 167
    .local v17, "titlePxSize":F
    const/4 v3, -0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_6

    const/16 p6, 0xe

    .line 168
    .end local p6    # "messageTextSize":I
    :cond_6
    move/from16 v0, p6

    int-to-float v3, v0

    .line 167
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->convertDimToPixel(Landroid/content/Context;F)F

    move-result v13

    .line 171
    .local v13, "messagePxSize":F
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_title"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "setTextSize"

    move/from16 v0, v17

    invoke-virtual {v7, v3, v4, v0}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 172
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_message"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "setTextSize"

    invoke-virtual {v7, v3, v4, v13}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 175
    const/4 v5, 0x0

    .line 176
    .local v5, "notifId":I
    if-eqz p11, :cond_a

    .line 179
    :try_start_0
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 194
    :goto_4
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "drawable.app_mini_icon"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v6, p15

    move/from16 v9, p11

    invoke-static/range {v3 .. v9}, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->buildAndShowNotification(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/widget/RemoteViews;IZ)V

    goto/16 :goto_0

    .line 133
    .end local v5    # "notifId":I
    .end local v7    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v12    # "messageColorStr":Ljava/lang/String;
    .end local v13    # "messagePxSize":F
    .end local v16    # "titleColorStr":Ljava/lang/String;
    .end local v17    # "titlePxSize":F
    .restart local p5    # "titleTextSize":I
    .restart local p6    # "messageTextSize":I
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 134
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 136
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 180
    .end local p5    # "titleTextSize":I
    .end local p6    # "messageTextSize":I
    .restart local v5    # "notifId":I
    .restart local v7    # "remoteViews":Landroid/widget/RemoteViews;
    .restart local v12    # "messageColorStr":Ljava/lang/String;
    .restart local v13    # "messagePxSize":F
    .restart local v16    # "titleColorStr":Ljava/lang/String;
    .restart local v17    # "titlePxSize":F
    :catch_0
    move-exception v10

    .line 181
    .local v10, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .line 183
    goto :goto_4

    .line 185
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getAppPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 186
    .local v14, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "com.gamesys.android.ane.tools.notification.NOTIFICATION_NOTIF_ID_KEY"

    const/4 v4, 0x0

    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 187
    add-int/lit8 v5, v5, 0x1

    .line 189
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 190
    .local v11, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "com.gamesys.android.ane.tools.notification.NOTIFICATION_NOTIF_ID_KEY"

    invoke-interface {v11, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4
.end method

.method protected static populateResourcesMap(Ljava/lang/String;Lcom/adobe/fre/FREContext;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "appContext"    # Landroid/content/Context;
    .param p3, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v3, :cond_2

    .line 50
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0xa

    const/high16 v5, 0x3f800000

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    const-string v1, ""

    .line 54
    .local v1, "platformIdentifier":Ljava/lang/String;
    invoke-static {p2}, Lcom/gamesys/android/common/tools/ToolsBox;->getInstallerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "installer":Ljava/lang/String;
    const-string v3, "AMAZON_APP_STORE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_amazon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_0
    :goto_0
    const-string v2, ""

    .line 64
    .local v2, "smallIconResourceName":Ljava/lang/String;
    const-string v3, "lgc"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 65
    const-string v2, "lgc_icon48x48"

    .line 71
    :cond_1
    :goto_1
    if-eqz p1, :cond_5

    .line 72
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "layout.notification_cm"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "layout.notification_cm"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_icon"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id.notif_content_icon"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_background"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id.notif_content_background"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_title"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id.notif_content_title"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_message"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id.notif_content_message"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "drawable.app_mini_icon"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "drawable."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v0    # "installer":Ljava/lang/String;
    .end local v1    # "platformIdentifier":Ljava/lang/String;
    .end local v2    # "smallIconResourceName":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 58
    .restart local v0    # "installer":Ljava/lang/String;
    .restart local v1    # "platformIdentifier":Ljava/lang/String;
    :cond_3
    const-string v3, "GOOGLE_PLAY_STORE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_google"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 66
    .restart local v2    # "smallIconResourceName":Ljava/lang/String;
    :cond_4
    const-string v3, "jpj"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    const-string v2, "slots_icon48x48"

    goto/16 :goto_1

    .line 81
    :cond_5
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    const-string v4, "layout.notification_cm"

    const-string v5, "layout"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notification_cm"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_icon"

    const-string v5, "id"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notif_content_icon"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_background"

    .line 85
    const-string v5, "id"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notif_content_background"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 84
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    const-string v4, "id.notif_content_title"

    const-string v5, "id"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notif_content_title"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id.notif_content_message"

    .line 89
    const-string v5, "id"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notif_content_message"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 88
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->resourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "drawable.app_mini_icon"

    const-string v5, "drawable"

    invoke-static {p0, v5, v2}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method


# virtual methods
.method public trackMe()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method
