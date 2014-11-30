.class public Lcom/facebook/orca/push/c2dm/C2DMReceiver;
.super Landroid/app/IntentService;
.source "C2DMReceiver.java"


# instance fields
.field private a:Lcom/facebook/orca/notify/OrcaNotificationManager;

.field private b:Lcom/facebook/orca/auth/AuthenticationManager;

.field private c:Lcom/facebook/orca/push/mqtt/PushHandler;

.field private d:Lcom/facebook/orca/push/PushManager;

.field private e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

.field private f:Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;

.field private g:Lcom/facebook/orca/push/common/PushDeserialization;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "C2DMReceiver"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 243
    const-string v0, "orca:C2DMReceiver"

    const-string v1, "onUnregistrered"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 123
    invoke-static {p0}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;

    .line 124
    iget-object v0, v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->a()V

    .line 127
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    const-string v0, "orca:C2DMReceiver"

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 132
    const-string v0, "registration_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v2, "unregistered"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v7}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const-string v3, "orca:C2DMReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dmControl: registrationId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", removed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    if-eqz v2, :cond_2

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()V

    .line 144
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a(Landroid/content/Context;)V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    if-eqz v1, :cond_3

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()V

    .line 149
    const-string v0, "orca:C2DMReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registration error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1, v1}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->d()J

    move-result-wide v1

    .line 154
    const-string v0, "orca:C2DMReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling registration retry, backoff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.RETRY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 159
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 160
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 164
    const-wide/16 v3, 0x2

    mul-long v0, v1, v3

    .line 165
    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(J)V

    goto :goto_0

    .line 169
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v1, "orca:C2DMReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registration error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    const-string v0, "orca:C2DMReceiver"

    const-string v1, "onRegistrered"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->d:Lcom/facebook/orca/push/PushManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PushManager;->f()V

    .line 237
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 178
    const-string v0, "orca:C2DMReceiver"

    const-string v1, "Received onMessage"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 183
    :try_start_0
    const-string v1, "regid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 188
    const-string v2, "uid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->f()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 198
    if-nez v0, :cond_1

    .line 199
    const-string v0, "orca:C2DMReceiver"

    const-string v1, "No me user set. Ignoring"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v0, "message"

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 211
    const-string v3, "msg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "orca_message"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    :cond_2
    const-string v2, "params"

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->g:Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/push/common/PushDeserialization;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    .line 217
    iget-object v3, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->c:Lcom/facebook/orca/push/mqtt/PushHandler;

    sget-object v4, Lcom/facebook/orca/push/mqtt/PushSource;->C2DM:Lcom/facebook/orca/push/mqtt/PushSource;

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/facebook/orca/push/mqtt/PushHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/mqtt/PushSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string v1, "orca:C2DMReceiver"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 84
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 85
    const-class v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 86
    const-class v0, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/AuthenticationManager;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 87
    const-class v0, Lcom/facebook/orca/push/mqtt/PushHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/PushHandler;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->c:Lcom/facebook/orca/push/mqtt/PushHandler;

    .line 88
    const-class v0, Lcom/facebook/orca/push/PushManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushManager;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->d:Lcom/facebook/orca/push/PushManager;

    .line 89
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    .line 90
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->f:Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;

    .line 91
    const-class v0, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/common/PushDeserialization;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->g:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 92
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->f:Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;

    iget-object v0, v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    .line 114
    return-void

    .line 100
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->c(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->f:Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;

    iget-object v1, v1, Lcom/facebook/orca/push/c2dm/C2DMReceiver$WakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v1}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    throw v0

    .line 102
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RETRY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
