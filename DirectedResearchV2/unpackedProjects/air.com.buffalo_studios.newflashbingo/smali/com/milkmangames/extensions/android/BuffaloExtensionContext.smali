.class public Lcom/milkmangames/extensions/android/BuffaloExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "BuffaloExtensionContext.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x7
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUCancelLocalNotificationFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetAndroidIdFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetAsIdFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetMacFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetReferrerIdFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUInitFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUInitGCMFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAndroidIdAvailabledFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAsIdAvailabledFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsGCMAvailableFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsNetworkReachableFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsTokenRegisteredFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsTokenRegisteredServerFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsTrackingEnabledFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleOnceLocalNotificaitonFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleRepeatingLocalNotificaitonFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetInForegroundFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetServerRegistrationFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUTestInvokeFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUUnregisterTokenFunction;,
        Lcom/milkmangames/extensions/android/BuffaloExtensionContext$PendingFlashEvent;
    }
.end annotation


# static fields
.field static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field private static final LOCAL_REQUEST_CODE:I = 0x5ab1ec

.field public static final TAG:Ljava/lang/String; = "[BUExtension]"

.field private static final WIFI_UNAVAILABLE:Ljava/lang/String; = "unavailable"

.field private static instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

.field private static isInForeground:Z

.field private static lastReferrerId:Ljava/lang/String;

.field private static pendingEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/milkmangames/extensions/android/BuffaloExtensionContext$PendingFlashEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isFlashInitialized:Z

.field private lastGCMSender:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->pendingEvents:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 90
    sput-object p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->isInForeground:Z

    .line 92
    return-void
.end method

.method private static encodeNotificationIntent(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v7, "[BUExtension]"

    .line 606
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 607
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 609
    .local v1, "extrasJsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 610
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 624
    :try_start_0
    const-string v5, "extras"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 631
    :goto_1
    return-object v2

    .line 610
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 614
    .local v3, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 617
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "[BUExtension]"

    const-string v6, "Failed posting extra to callback"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 625
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "key":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 627
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "[BUExtension]"

    const-string v5, "Failed posting extras obj to callback"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static enqueueFlashEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "eventData"    # Ljava/lang/String;

    .prologue
    .line 399
    sget-object v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-virtual {v0, p0, p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    const-string v0, "[BUExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enqueue->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-object v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->pendingEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$PendingFlashEvent;

    invoke-direct {v1, p0, p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$PendingFlashEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/milkmangames/extensions/android/BuffaloExtensionContext;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getInstance(Z)Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Z)Lcom/milkmangames/extensions/android/BuffaloExtensionContext;
    .locals 1
    .param p0, "isFlashInitialized"    # Z

    .prologue
    .line 98
    sget-object v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-direct {v0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;-><init>()V

    sput-object v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    .line 101
    sget-object v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    iput-boolean p0, v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->isFlashInitialized:Z

    .line 103
    :cond_0
    sget-object v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    return-object v0
.end method

.method public static getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 241
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 243
    .local v2, "sendersStrings":[Ljava/lang/String;
    sget-object v3, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    if-eqz v3, :cond_0

    .line 245
    sget-object v3, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    iget-object v3, v3, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->lastGCMSender:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 247
    sget-object v3, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    iget-object v3, v3, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->lastGCMSender:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 256
    :goto_0
    return-object v2

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bfpref"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 253
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "lklast"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "lastId":Ljava/lang/String;
    sget-object v3, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    iput-object v0, v3, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->lastGCMSender:Ljava/lang/String;

    .line 255
    sget-object v3, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->instance:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    iget-object v3, v3, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->lastGCMSender:Ljava/lang/String;

    aput-object v3, v2, v5

    goto :goto_0
.end method

.method public static onGCMError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorId"    # Ljava/lang/String;

    .prologue
    .line 572
    const-string v0, "[BUExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCM Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string v0, "GCM_ERROR"

    invoke-static {v0, p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->enqueueFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public static onGCMMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 499
    invoke-static {p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->encodeNotificationIntent(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "message":Ljava/lang/String;
    const-string v0, "[BUExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Message received:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v0, "MESSAGE_RECEIVED"

    invoke-static {v0, v2}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->enqueueFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    sget-boolean v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->isInForeground:Z

    if-eqz v0, :cond_0

    .line 505
    const-string p0, "[BUExtension]"

    .end local p0    # "context":Landroid/content/Context;
    const-string p1, "GCM = in foreground."

    .end local p1    # "intent":Landroid/content/Intent;
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return-void

    .line 510
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 511
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 512
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 513
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 516
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "message"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "rawJson":Ljava/lang/String;
    move-object v6, v3

    .line 518
    .local v6, "tickerText":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .end local v3    # "rawJson":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 521
    .local v3, "title":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .end local p1    # "intent":Landroid/content/Intent;
    const-string v7, "title"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local v3    # "title":Ljava/lang/CharSequence;
    .local p1, "title":Ljava/lang/CharSequence;
    move-object v7, p1

    .line 528
    .end local p1    # "title":Ljava/lang/CharSequence;
    .local v7, "title":Ljava/lang/CharSequence;
    :goto_1
    new-instance v3, Landroid/app/Notification;

    iget p1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v3, p1, v6, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 529
    .local v3, "notification":Landroid/app/Notification;
    iget p1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1f

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 530
    iget p1, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 531
    iget p1, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 532
    iget p1, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 p1, p1, 0x3

    iput p1, v3, Landroid/app/Notification;->defaults:I

    .line 533
    const/16 p1, 0x3e8

    iput p1, v3, Landroid/app/Notification;->ledOnMS:I

    .line 534
    const/16 p1, 0x3e8

    iput p1, v3, Landroid/app/Notification;->ledOffMS:I

    .line 535
    const/4 p1, -0x1

    iput p1, v3, Landroid/app/Notification;->ledARGB:I

    .line 537
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 538
    .local p1, "packageName":Ljava/lang/String;
    const-string v0, "[BUExtension]"

    .end local v0    # "appContext":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const-string v8, "MPN:"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 540
    .local p1, "launchIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .end local p1    # "launchIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 541
    .local p1, "launchClassName":Ljava/lang/String;
    const-string v0, "[BUExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "LCN:"

    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .end local p1    # "launchClassName":Ljava/lang/String;
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 554
    .local v0, "notificationIntent":Landroid/content/Intent;
    const-string p1, "bufGcm"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const/high16 p1, 0x24000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 559
    const/4 p1, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 560
    .local p1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, p0, v7, v6, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 561
    iget p0, v3, Landroid/app/Notification;->flags:I

    .end local p0    # "context":Landroid/content/Context;
    or-int/lit8 p0, p0, 0x10

    iput p0, v3, Landroid/app/Notification;->flags:I

    .line 562
    const/4 p0, 0x0

    invoke-virtual {v4, p0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 564
    const-string p0, "[BUExtension]"

    const-string p1, "release lock"

    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {}, Lcom/milkmangames/extensions/android/WakeLocker;->release()V

    goto/16 :goto_0

    .line 523
    .end local v7    # "title":Ljava/lang/CharSequence;
    .local v0, "appContext":Landroid/content/Context;
    .restart local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v3, "title":Ljava/lang/CharSequence;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception p1

    .line 525
    .local p1, "e":Ljava/lang/Exception;
    const-string v7, "[BUExtension]"

    const-string v8, "Message parse failed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v3

    .end local v3    # "title":Ljava/lang/CharSequence;
    .restart local v7    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 547
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local p1    # "e":Ljava/lang/Exception;
    .local v3, "notification":Landroid/app/Notification;
    :catch_1
    move-exception p0

    .line 549
    .local p0, "e":Ljava/lang/Exception;
    const-string p1, "[BUExtension]"

    const-string v0, "Failed to locate the air main intent."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static onGCMRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 579
    const-string v0, "[BUExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCM Registered:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v0, "TOKEN_REGISTERED"

    invoke-static {v0, p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->enqueueFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public static onGCMUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 586
    const-string v0, "[BUExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCM Unregistered:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string v0, "TOKEN_UNREGISTERED"

    invoke-static {v0, p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->enqueueFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public static onLocalMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 416
    invoke-static {p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->encodeNotificationIntent(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "message":Ljava/lang/String;
    const-string v0, "[BUExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Local Message received..:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v0, "LOCAL_MESSAGE_RECEIVED"

    invoke-static {v0, v2}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->enqueueFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-boolean v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->isInForeground:Z

    if-eqz v0, :cond_0

    .line 422
    const-string p0, "[BUExtension]"

    .end local p0    # "context":Landroid/content/Context;
    const-string p1, "LN = in foreground."

    .end local p1    # "intent":Landroid/content/Intent;
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_0
    return-void

    .line 427
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 428
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 429
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 430
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 433
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "message"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, "rawJson":Ljava/lang/String;
    move-object v6, v3

    .line 435
    .local v6, "tickerText":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .end local v3    # "rawJson":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 438
    .local v3, "title":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .end local p1    # "intent":Landroid/content/Intent;
    const-string v7, "title"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local v3    # "title":Ljava/lang/CharSequence;
    .local p1, "title":Ljava/lang/CharSequence;
    move-object v7, p1

    .line 445
    .end local p1    # "title":Ljava/lang/CharSequence;
    .local v7, "title":Ljava/lang/CharSequence;
    :goto_1
    new-instance v3, Landroid/app/Notification;

    iget p1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v3, p1, v6, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 446
    .local v3, "notification":Landroid/app/Notification;
    iget p1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1f

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 447
    iget p1, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 448
    iget p1, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 449
    iget p1, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 p1, p1, 0x3

    iput p1, v3, Landroid/app/Notification;->defaults:I

    .line 450
    const/16 p1, 0x3e8

    iput p1, v3, Landroid/app/Notification;->ledOnMS:I

    .line 451
    const/16 p1, 0x3e8

    iput p1, v3, Landroid/app/Notification;->ledOffMS:I

    .line 452
    const/4 p1, -0x1

    iput p1, v3, Landroid/app/Notification;->ledARGB:I

    .line 456
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 457
    .local p1, "packageName":Ljava/lang/String;
    const-string v0, "[BUExtension]"

    .end local v0    # "appContext":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const-string v8, "LMPN:"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 459
    .local p1, "launchIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .end local p1    # "launchIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 460
    .local p1, "launchClassName":Ljava/lang/String;
    const-string v0, "[BUExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "LLCN:"

    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .end local p1    # "launchClassName":Ljava/lang/String;
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    .local v0, "notificationIntent":Landroid/content/Intent;
    const-string p1, "bufLocal"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const/high16 p1, 0x24000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 478
    const/4 p1, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 480
    .local p1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, p0, v7, v6, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 481
    iget p0, v3, Landroid/app/Notification;->flags:I

    .end local p0    # "context":Landroid/content/Context;
    or-int/lit8 p0, p0, 0x10

    iput p0, v3, Landroid/app/Notification;->flags:I

    .line 482
    const/4 p0, 0x0

    invoke-virtual {v4, p0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 484
    const-string p0, "[BUExtension]"

    const-string p1, "release lock"

    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {}, Lcom/milkmangames/extensions/android/WakeLocker;->release()V

    goto/16 :goto_0

    .line 440
    .end local v7    # "title":Ljava/lang/CharSequence;
    .local v0, "appContext":Landroid/content/Context;
    .restart local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v3, "title":Ljava/lang/CharSequence;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception p1

    .line 442
    .local p1, "e":Ljava/lang/Exception;
    const-string v7, "[BUExtension]"

    const-string v8, "Local Message parse failed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v3

    .end local v3    # "title":Ljava/lang/CharSequence;
    .restart local v7    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 466
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local p1    # "e":Ljava/lang/Exception;
    .local v3, "notification":Landroid/app/Notification;
    :catch_1
    move-exception p0

    .line 468
    .local p0, "e":Ljava/lang/Exception;
    const-string p1, "[BUExtension]"

    const-string v0, "Failed to locate the air main intent."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static onReferrerReceived(Ljava/lang/String;)V
    .locals 3
    .param p0, "referrerId"    # Ljava/lang/String;

    .prologue
    .line 491
    sput-object p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->lastReferrerId:Ljava/lang/String;

    .line 492
    const-string v0, "[BUExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Referrer received:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v0, "REFERRER_RECEIVED"

    sget-object v1, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->lastReferrerId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->enqueueFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-void
.end method


# virtual methods
.method public cancelLocalNotification(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 164
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/milkmangames/extensions/android/LocalReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x5ab1ec

    add-int/2addr v4, p1

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 166
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 167
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 168
    return-void
.end method

.method public dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "eventData"    # Ljava/lang/String;

    .prologue
    .line 381
    const-string v0, "[BUExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dispatch->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public dispatchQueuedEvents()V
    .locals 4

    .prologue
    .line 389
    sget-object v1, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->pendingEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    sget-object v1, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->pendingEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 394
    return-void

    .line 389
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$PendingFlashEvent;

    .line 391
    .local v0, "e":Lcom/milkmangames/extensions/android/BuffaloExtensionContext$PendingFlashEvent;
    iget-object v2, v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$PendingFlashEvent;->eventId:Ljava/lang/String;

    iget-object v3, v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$PendingFlashEvent;->eventData:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 675
    return-void
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "androidIdString":Ljava/lang/String;
    return-object v0
.end method

.method public getAsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 680
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 681
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "ffiInitBuffalo"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUInitFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUInitFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUInitFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v1, "ffiGetMacAddress"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetMacFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetMacFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetMacFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string v1, "ffiIsAsIdAvailable"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAsIdAvailabledFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAsIdAvailabledFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAsIdAvailabledFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string v1, "ffiIsAndroidIdAvailable"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAndroidIdAvailabledFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAndroidIdAvailabledFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAndroidIdAvailabledFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string v1, "ffiGetAsId"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetAsIdFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetAsIdFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetAsIdFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string v1, "ffiIsTrackingEnabled"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsTrackingEnabledFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsTrackingEnabledFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsTrackingEnabledFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string v1, "ffiGetAndroidId"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetAndroidIdFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetAndroidIdFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetAndroidIdFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v1, "ffiGetReferrerId"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetReferrerIdFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetReferrerIdFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUGetReferrerIdFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v1, "ffiInitGCM"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUInitGCMFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUInitGCMFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUInitGCMFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string v1, "ffiSetServerRegistration"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetServerRegistrationFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetServerRegistrationFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetServerRegistrationFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v1, "ffiUnregisterToken"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUUnregisterTokenFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUUnregisterTokenFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUUnregisterTokenFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string v1, "ffiIsTokenRegistered"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsTokenRegisteredFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsTokenRegisteredFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsTokenRegisteredFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string v1, "ffiIsTokenRegisteredServer"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsTokenRegisteredServerFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsTokenRegisteredServerFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsTokenRegisteredServerFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string v1, "ffiIsGCMAvailable"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsGCMAvailableFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsGCMAvailableFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsGCMAvailableFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string v1, "ffiIsNetworkReachable"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsNetworkReachableFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsNetworkReachableFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsNetworkReachableFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string v1, "ffiScheduleOnceLocalNotification"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleOnceLocalNotificaitonFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleOnceLocalNotificaitonFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleOnceLocalNotificaitonFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    const-string v1, "ffiScheduleRepeatingLocalNotification"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleRepeatingLocalNotificaitonFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleRepeatingLocalNotificaitonFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleRepeatingLocalNotificaitonFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const-string v1, "ffiCancelLocalNotification"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUCancelLocalNotificationFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUCancelLocalNotificationFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUCancelLocalNotificationFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string v1, "ffiSetInForeground"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetInForegroundFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetInForegroundFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetInForegroundFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string v1, "ffiTestInvoke"

    new-instance v2, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUTestInvokeFunction;

    invoke-direct {v2, p0, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUTestInvokeFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUTestInvokeFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    return-object v0
.end method

.method public getMACAddress()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "[BUExtension]"

    .line 329
    const-string v1, "unavailable"

    .line 333
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 334
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 342
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    const-string v3, "[BUExtension]"

    const-string v3, "Get Mac"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-object v1

    .line 336
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "[BUExtension]"

    const-string v3, "Wifi access failed->"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    const-string v1, "unavailable"

    goto :goto_0
.end method

.method public getReferrerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->lastReferrerId:Ljava/lang/String;

    return-object v0
.end method

.method public initBuffalo()V
    .locals 4

    .prologue
    .line 114
    const-string v2, "[BUExtension]"

    const-string v3, "Initialize Buffalo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$1;

    invoke-direct {v0, p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$1;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V

    .line 128
    .local v0, "connectivityReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method public initGCM(Ljava/lang/String;)V
    .locals 7
    .param p1, "GCMSender"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-string v5, "[BUExtension]"

    .line 205
    iput-object p1, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->lastGCMSender:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bfpref"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 208
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "lklast"

    iget-object v4, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->lastGCMSender:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    const-string v3, "[BUExtension]"

    const-string v3, "Init GCM.."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "regId":Ljava/lang/String;
    const-string v3, "[BUExtension]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "String res:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    const-string v3, "[BUExtension]"

    const-string v3, "No current token, starting registration..."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    const-string v3, "[BUExtension]"

    const-string v3, "DUmping event queue..."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->dispatchQueuedEvents()V

    .line 237
    return-void

    .line 225
    :cond_1
    const-string v3, "[BUExtension]"

    const-string v3, "Has token already."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->isRegisteredOnServer(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const-string v3, "[BUExtension]"

    const-string v3, "Token already registered."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v3, "TOKEN_ALREADY_REGISTERED"

    invoke-virtual {p0, v3, v2}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAndroidIdAvailable()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public isAsIdAvailable()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public isGCMAvailable()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "[BUExtension]"

    .line 292
    const-string v1, "[BUExtension]"

    const-string v1, "Check gcm available..."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :try_start_0
    const-string v1, "[BUExtension]"

    const-string v2, "Checking device..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    const-string v1, "[BUExtension]"

    const-string v1, "Checking manifest..."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :try_start_1
    const-string v1, "[BUExtension]"

    const-string v2, "Check manifest configuration..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 309
    const-string v1, "[BUExtension]"

    const-string v2, "Check complete."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    const-string v1, "[BUExtension]"

    const-string v1, "Complete available"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 298
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 300
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "[BUExtension]"

    const-string v1, "Device fail: unsupported."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v1, "[BUExtension]"

    const-string v1, "Notifications not supported on this device."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 302
    goto :goto_0

    .line 310
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 312
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "[BUExtension]"

    const-string v1, "Manifest failed configuration."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v1, "[BUExtension]"

    const-string v1, "Manifest is not properly configured."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 314
    goto :goto_0
.end method

.method public isNetworkAvailable()Z
    .locals 4

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 650
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 651
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isNetworkReachable()Z
    .locals 4

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 658
    .local v0, "cManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 659
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    const/4 v2, 0x1

    .line 664
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTokenRegistered()Z
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isTokenRegisteredServer()Z
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->isRegisteredOnServer(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isTrackingEnabled()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public scheduleOnceLocalNotification(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "timeSeconds"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/milkmangames/extensions/android/LocalReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "message"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v3, "title"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v3, "extraData"

    invoke-virtual {v1, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x5ab1ec

    add-int/2addr v4, p1

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 157
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 158
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 159
    return-void
.end method

.method public scheduleRepeatingLocalNotification(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "firstTimeSeconds"    # J
    .param p4, "thenEverySeconds"    # J
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "message"    # Ljava/lang/String;
    .param p8, "extraData"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/milkmangames/extensions/android/LocalReceiver;

    invoke-direct {v10, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v10, "intent":Landroid/content/Intent;
    const-string v4, "message"

    move-object v0, v10

    move-object v1, v4

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v4, "title"

    move-object v0, v10

    move-object v1, v4

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v4, "extraData"

    move-object v0, v10

    move-object v1, v4

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x5ab1ec

    add-int/2addr v5, p1

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v10, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 144
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 145
    .local v3, "alarmManager":Landroid/app/AlarmManager;
    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, p2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, p4

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 146
    return-void
.end method

.method public setInForeground(Z)V
    .locals 0
    .param p1, "isInForeground"    # Z

    .prologue
    .line 173
    sput-boolean p1, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->isInForeground:Z

    .line 174
    return-void
.end method

.method public setServerRegistration(Z)Z
    .locals 1
    .param p1, "isRegistered"    # Z

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->isRegisteredOnServer(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gcm/GCMRegistrar;->setRegisteredOnServer(Landroid/content/Context;Z)V

    .line 264
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public testInvoke()V
    .locals 9

    .prologue
    const-string v8, "bufLocal"

    const-string v7, "bufGcm"

    const-string v6, "[BUExtension]"

    .line 179
    const-string v4, "[BUExtension]"

    const-string v4, "test invoke!"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 181
    .local v2, "inIntent":Landroid/content/Intent;
    const-string v4, "[BUExtension]"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "inIntent:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 183
    .local v0, "extras":Landroid/os/Bundle;
    const-string v4, "[BUExtension]"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in extras:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz v0, :cond_1

    .line 186
    const-string v4, "bufLocal"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    const-string v4, "bufLocal"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "LOCAL_MESSAGE_SELECTED"

    invoke-static {v4, v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->enqueueFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    const-string v4, "bufGcm"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    const-string v4, "bufGcm"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "gcmMsg":Ljava/lang/String;
    const-string v4, "GCM_MESSAGE_SELECTED"

    invoke-static {v4, v1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->enqueueFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v1    # "gcmMsg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public unregisterToken()Z
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V

    .line 274
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
