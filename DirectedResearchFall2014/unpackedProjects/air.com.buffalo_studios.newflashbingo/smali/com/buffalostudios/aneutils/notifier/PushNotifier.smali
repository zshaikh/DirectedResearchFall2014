.class public Lcom/buffalostudios/aneutils/notifier/PushNotifier;
.super Ljava/lang/Object;
.source "PushNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buffalostudios/aneutils/notifier/PushNotifier$Event;,
        Lcom/buffalostudios/aneutils/notifier/PushNotifier$Init;,
        Lcom/buffalostudios/aneutils/notifier/PushNotifier$InitGCM;,
        Lcom/buffalostudios/aneutils/notifier/PushNotifier$IsGCMAvailable;,
        Lcom/buffalostudios/aneutils/notifier/PushNotifier$IsGCMRegistered;,
        Lcom/buffalostudios/aneutils/notifier/PushNotifier$IsGCMRegisteredOnServer;,
        Lcom/buffalostudios/aneutils/notifier/PushNotifier$SetGCMRegisteredOnServer;,
        Lcom/buffalostudios/aneutils/notifier/PushNotifier$UnregisterGCM;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PushNotifier"

.field private static _lastGCMSender:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adobe/fre/FREContext;)Z
    .locals 1

    .prologue
    .line 166
    invoke-static {p0}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->isGCMAvailable(Lcom/adobe/fre/FREContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/adobe/fre/FREContext;)Z
    .locals 1

    .prologue
    .line 157
    invoke-static {p0}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->isGCMRegistered(Lcom/adobe/fre/FREContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/adobe/fre/FREContext;)Z
    .locals 1

    .prologue
    .line 161
    invoke-static {p0}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->isGCMRegisteredOnServer(Lcom/adobe/fre/FREContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/adobe/fre/FREContext;Z)Z
    .locals 1

    .prologue
    .line 141
    invoke-static {p0, p1}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->setGCMRegisteredOnServer(Lcom/adobe/fre/FREContext;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/adobe/fre/FREContext;)Z
    .locals 1

    .prologue
    .line 149
    invoke-static {p0}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->unregisterGCM(Lcom/adobe/fre/FREContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    invoke-static {p0}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->initGCM(Ljava/lang/String;)V

    return-void
.end method

.method public static getGCMSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 126
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 128
    .local v2, "sendersStrings":[Ljava/lang/String;
    sget-object v3, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->_lastGCMSender:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 129
    sget-object v3, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->_lastGCMSender:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 138
    :goto_0
    return-object v2

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 134
    const-string v4, "bfpref"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "lklast"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "lastId":Ljava/lang/String;
    sput-object v0, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->_lastGCMSender:Ljava/lang/String;

    .line 137
    sget-object v3, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->_lastGCMSender:Ljava/lang/String;

    aput-object v3, v2, v5

    goto :goto_0
.end method

.method private static initGCM(Ljava/lang/String;)V
    .locals 8
    .param p0, "GCMSender"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const-string v6, "PushNotifier"

    .line 192
    invoke-static {}, Lcom/buffalostudios/aneutils/ANEContext;->getFREContext()Lcom/buffalostudios/aneutils/ANEContext;

    move-result-object v0

    .line 194
    .local v0, "context":Lcom/adobe/fre/FREContext;
    sput-object p0, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->_lastGCMSender:Ljava/lang/String;

    .line 196
    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 197
    const-string v5, "bfpref"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 198
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 199
    .local v1, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "lklast"

    sget-object v5, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->_lastGCMSender:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    const-string v4, "PushNotifier"

    const-string v4, "Init GCM.."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "regId":Ljava/lang/String;
    const-string v4, "PushNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "String res:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    const-string v4, "PushNotifier"

    const-string v4, "No current token, starting registration..."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p0, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v4, "PushNotifier"

    const-string v4, "Has token already."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gcm/GCMRegistrar;->isRegisteredOnServer(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    const-string v4, "PushNotifier"

    const-string v4, "Token already registered."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v4, "GCM_ALREADY_REGISTERED"

    invoke-static {v4, v3}, Lcom/buffalostudios/aneutils/ANEContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isGCMAvailable(Lcom/adobe/fre/FREContext;)Z
    .locals 5
    .param p0, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    const/4 v4, 0x0

    const-string v3, "PushNotifier"

    .line 167
    const-string v1, "PushNotifier"

    const-string v1, "Check gcm available..."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_0
    const-string v1, "PushNotifier"

    const-string v2, "Checking device..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    const-string v1, "PushNotifier"

    const-string v1, "Checking manifest..."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_1
    const-string v1, "PushNotifier"

    const-string v2, "Check manifest configuration..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 180
    const-string v1, "PushNotifier"

    const-string v2, "Check complete."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    const-string v1, "PushNotifier"

    const-string v1, "Complete available"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 171
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 172
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "PushNotifier"

    const-string v1, "Device fail: unsupported."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v1, "PushNotifier"

    const-string v1, "Notifications not supported on this device."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 174
    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 182
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "PushNotifier"

    const-string v1, "Manifest failed configuration."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v1, "PushNotifier"

    const-string v1, "Manifest is not properly configured."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 184
    goto :goto_0
.end method

.method private static isGCMRegistered(Lcom/adobe/fre/FREContext;)Z
    .locals 1
    .param p0, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static isGCMRegisteredOnServer(Lcom/adobe/fre/FREContext;)Z
    .locals 1
    .param p0, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->isRegisteredOnServer(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static onGCMError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorId"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "PushNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCM Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v0, "GCM_ERROR"

    invoke-static {v0, p1}, Lcom/buffalostudios/aneutils/ANEContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static onGCMMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string v0, "PushNotifier"

    const-string v1, "Wake lock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {p0}, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->acquire(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Lcom/buffalostudios/aneutils/notifier/NotifierUtils;->encodeNotificationIntent(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "message":Ljava/lang/String;
    const-string v0, "PushNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Message received:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v0, "GCM_MESSAGE_RECEIVED"

    invoke-static {v0, v2}, Lcom/buffalostudios/aneutils/ANEContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/buffalostudios/aneutils/ANEUtils;->getInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string p0, "PushNotifier"

    .end local p0    # "context":Landroid/content/Context;
    const-string p1, "GCM = in foreground."

    .end local p1    # "intent":Landroid/content/Intent;
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-void

    .line 50
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 49
    check-cast v4, Landroid/app/NotificationManager;

    .line 51
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 52
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 56
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "message"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "rawJson":Ljava/lang/String;
    move-object v6, v3

    .line 58
    .local v6, "tickerText":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 59
    .end local v3    # "rawJson":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 61
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

    .line 66
    .end local p1    # "title":Ljava/lang/CharSequence;
    .local v7, "title":Ljava/lang/CharSequence;
    :goto_1
    new-instance v3, Landroid/app/Notification;

    iget p1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 66
    invoke-direct {v3, p1, v6, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 68
    .local v3, "notification":Landroid/app/Notification;
    iget p1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1f

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 72
    iget p1, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 73
    iget p1, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 74
    iget p1, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 p1, p1, 0x3

    iput p1, v3, Landroid/app/Notification;->defaults:I

    .line 76
    const/16 p1, 0x3e8

    iput p1, v3, Landroid/app/Notification;->ledOnMS:I

    .line 77
    const/16 p1, 0x3e8

    iput p1, v3, Landroid/app/Notification;->ledOffMS:I

    .line 78
    const/4 p1, -0x1

    iput p1, v3, Landroid/app/Notification;->ledARGB:I

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 81
    .local p1, "packageName":Ljava/lang/String;
    const-string v0, "PushNotifier"

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

    .line 83
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 84
    .local p1, "launchIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .end local p1    # "launchIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 85
    .local p1, "launchClassName":Ljava/lang/String;
    const-string v0, "PushNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "LCN:"

    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 89
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 88
    .end local p1    # "launchClassName":Ljava/lang/String;
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .local v0, "notificationIntent":Landroid/content/Intent;
    const-string p1, "bufGcm"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const/high16 p1, 0x24000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    const/4 p1, 0x0

    .line 101
    const/high16 v1, 0x8000000

    .line 100
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 102
    .local p1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, p0, v7, v6, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 103
    iget p0, v3, Landroid/app/Notification;->flags:I

    .end local p0    # "context":Landroid/content/Context;
    or-int/lit8 p0, p0, 0x10

    iput p0, v3, Landroid/app/Notification;->flags:I

    .line 104
    const/4 p0, 0x0

    invoke-virtual {v4, p0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 106
    const-string p0, "PushNotifier"

    const-string p1, "release lock"

    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/buffalostudios/aneutils/notifier/WakeLocker;->release()V

    goto/16 :goto_0

    .line 62
    .end local v7    # "title":Ljava/lang/CharSequence;
    .local v0, "appContext":Landroid/content/Context;
    .restart local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v3, "title":Ljava/lang/CharSequence;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception p1

    .line 63
    .local p1, "e":Ljava/lang/Exception;
    const-string v7, "PushNotifier"

    const-string v8, "Message parse failed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v3

    .end local v3    # "title":Ljava/lang/CharSequence;
    .restart local v7    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 90
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local p1    # "e":Ljava/lang/Exception;
    .local v3, "notification":Landroid/app/Notification;
    :catch_1
    move-exception p0

    .line 91
    .local p0, "e":Ljava/lang/Exception;
    const-string p1, "PushNotifier"

    const-string v0, "Failed to locate the air main intent."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static onGCMRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "PushNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCM Registered:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v0, "GCM_REGISTERED"

    invoke-static {v0, p1}, Lcom/buffalostudios/aneutils/ANEContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static onGCMUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "PushNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCM Unregistered:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v0, "GCM_UNREGISTERED"

    invoke-static {v0, p1}, Lcom/buffalostudios/aneutils/ANEContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private static setGCMRegisteredOnServer(Lcom/adobe/fre/FREContext;Z)Z
    .locals 1
    .param p0, "context"    # Lcom/adobe/fre/FREContext;
    .param p1, "isRegistered"    # Z

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->isRegisteredOnServer(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gcm/GCMRegistrar;->setRegisteredOnServer(Landroid/content/Context;Z)V

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static unregisterGCM(Lcom/adobe/fre/FREContext;)Z
    .locals 1
    .param p0, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
