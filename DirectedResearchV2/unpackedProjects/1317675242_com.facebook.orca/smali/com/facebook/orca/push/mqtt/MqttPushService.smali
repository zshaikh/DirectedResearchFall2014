.class public Lcom/facebook/orca/push/mqtt/MqttPushService;
.super Landroid/app/Service;
.source "MqttPushService.java"


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J

.field private static final d:J

.field private static final e:Lcom/facebook/orca/prefs/PrefKey;


# instance fields
.field private f:Lcom/facebook/orca/push/mqtt/PushHandler;

.field private g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private i:Lcom/facebook/orca/auth/AuthenticationManager;

.field private j:Lcom/facebook/orca/push/common/PushDeserialization;

.field private k:Lcom/facebook/orca/push/PresenceManager;

.field private l:Lcom/facebook/orca/config/OrcaMqttConfig;

.field private m:Lcom/facebook/orca/net/OrcaNetworkManager;

.field private n:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private o:Ljava/util/Random;

.field private p:Landroid/content/SharedPreferences;

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Z

.field private s:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

.field private t:J

.field private u:J

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xa

    .line 51
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v4

    sput-wide v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:J

    .line 54
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v4

    sput-wide v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:J

    .line 55
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:J

    .line 56
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v4

    sput-wide v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->d:J

    .line 61
    const-string v0, "messenger_mqtt_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->e:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x78

    .line 445
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    :cond_0
    const/4 v0, 0x0

    .line 454
    :goto_0
    return-object v0

    .line 450
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 451
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 454
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(J)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 344
    const-string v2, "orca:MqttPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling kick in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 346
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 347
    const-string v1, "Orca.KICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 349
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 350
    invoke-virtual {p0, v5, p1, p2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 351
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 213
    const-string v0, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->u:J

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->v:J

    .line 219
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Landroid/content/SharedPreferences;

    const-string v1, "retryInterval"

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 220
    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 221
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "retryInterval"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    const-string v0, "orca:MqttPushService"

    const-string v1, "Network changed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->f()V

    .line 228
    return-void

    .line 224
    :cond_1
    const-string v0, "com.facebook.orca.USER_BECAME_ACTIVE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "orca:MqttPushService"

    const-string v1, "User became active"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttPushService;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->f()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttPushService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c()Lcom/facebook/orca/prefs/PrefKey;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->e:Lcom/facebook/orca/prefs/PrefKey;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "orca:MqttPushService"

    const-string v1, "Starting service..."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->r:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "orca:MqttPushService"

    const-string v1, "Attempt to start service that is already started"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->f()V

    .line 187
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->r:Z

    .line 164
    new-instance v0, Lcom/facebook/orca/push/mqtt/MqttPushService$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/MqttPushService$1;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushService;)V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    const-string v1, "com.facebook.orca.USER_BECAME_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    new-instance v0, Lcom/facebook/orca/push/mqtt/MqttPushService$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/MqttPushService$2;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushService;)V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 184
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 186
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->f()V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->r:Z

    if-nez v0, :cond_0

    .line 192
    const-string v0, "orca:MqttPushService"

    const-string v1, "Attempt to stop connection not active."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->r:Z

    .line 198
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    iput-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:Landroid/content/BroadcastReceiver;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 206
    iput-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->h()V

    .line 210
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 232
    const-string v0, "orca:MqttPushService"

    const-string v1, "In kickConnection"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    const-string v0, "orca:MqttPushService"

    const-string v1, "Shouldn\'t be connected"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->h()V

    .line 261
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->CONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    if-ne v0, v1, :cond_3

    .line 240
    iget-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->v:J

    iget-wide v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->t:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 241
    const-string v0, "orca:MqttPushService"

    const-string v1, "Will reconnect because network changed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 253
    iget-wide v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->u:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 254
    const-string v0, "orca:MqttPushService"

    const-string v1, "Too early to retry connection"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_2
    const-string v0, "orca:MqttPushService"

    const-string v1, "Already connected"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->l()V

    goto :goto_0

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->CONNECTING:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    if-ne v0, v1, :cond_1

    .line 248
    const-string v0, "orca:MqttPushService"

    const-string v1, "Already connecting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_4
    const-string v0, "orca:MqttPushService"

    const-string v1, "Connecting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->CONNECTING:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c()V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->h()V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->DISCONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    .line 273
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b()V

    .line 274
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->m()V

    .line 275
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->k()V

    .line 276
    return-void
.end method

.method private i()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 279
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->r:Z

    if-nez v0, :cond_0

    .line 280
    const-string v0, "orca:MqttPushService"

    const-string v1, "Service not started"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 310
    :goto_0
    return v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    const-string v0, "orca:MqttPushService"

    const-string v1, "Not connected to network"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 287
    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->i:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->i:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->f()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-nez v0, :cond_3

    .line 292
    :cond_2
    const-string v0, "orca:MqttPushService"

    const-string v1, "Not logged in"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 293
    goto :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 298
    const-string v0, "orca:MqttPushService"

    const-string v1, "GK is off"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 299
    goto :goto_0

    .line 303
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 304
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v2}, Lcom/facebook/orca/push/PresenceManager;->f()J

    move-result-wide v2

    .line 305
    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 306
    const-string v0, "orca:MqttPushService"

    const-string v1, "User is idle"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 307
    goto :goto_0

    .line 310
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->l:Lcom/facebook/orca/config/OrcaMqttConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/config/OrcaMqttConfig;->d()S

    move-result v0

    int-to-long v2, v0

    sget-wide v4, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v4, v2

    .line 316
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 317
    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 318
    const-string v2, "Orca.KEEP_ALIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 320
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 324
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 330
    const-string v1, "Orca.KEEP_ALIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 332
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 333
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 334
    return-void
.end method

.method private l()V
    .locals 6

    .prologue
    .line 337
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PresenceManager;->f()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:J

    add-long/2addr v0, v2

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 339
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(J)V

    .line 340
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 355
    const-string v0, "orca:MqttPushService"

    const-string v1, "Cancelling any pending kick"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 357
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 358
    const-string v1, "Orca.KICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 360
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 361
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 362
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 365
    const-string v0, "orca:MqttPushService"

    const-string v1, "Connection established"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Landroid/content/SharedPreferences;

    const-string v1, "retryInterval"

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 367
    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "retryInterval"

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->j()V

    .line 371
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->l()V

    .line 372
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->CONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->t:J

    .line 374
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 409
    :try_start_0
    invoke-static {p2}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 411
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    const-string v1, "orca:MqttPushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publish:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    const-string v1, "/orca_message_notifications"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/orca_typing_notifications"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    :cond_1
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 418
    const-string v2, "message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 420
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->j:Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/push/common/PushDeserialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_2

    .line 422
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v2

    .line 424
    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->f:Lcom/facebook/orca/push/mqtt/PushHandler;

    sget-object v4, Lcom/facebook/orca/push/mqtt/PushSource;->MQTT:Lcom/facebook/orca/push/mqtt/PushSource;

    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/facebook/orca/push/mqtt/PushHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/mqtt/PushSource;)V

    .line 442
    :cond_2
    :goto_0
    return-void

    .line 426
    :cond_3
    const-string v2, "chat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 427
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->j:Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/push/common/PushDeserialization;->b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v2

    .line 431
    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->f:Lcom/facebook/orca/push/mqtt/PushHandler;

    sget-object v4, Lcom/facebook/orca/push/mqtt/PushSource;->MQTT:Lcom/facebook/orca/push/mqtt/PushSource;

    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/facebook/orca/push/mqtt/PushHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/mqtt/PushSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    const-string v1, "orca:MqttPushService"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 433
    :cond_4
    :try_start_1
    const-string v2, "typ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    const-string v1, "sender_fbid"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 435
    const-string v2, "state"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v0

    .line 436
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/push/PresenceManager;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method b()V
    .locals 6

    .prologue
    .line 377
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->DISCONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    if-ne v0, v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const-string v0, "orca:MqttPushService"

    const-string v1, "Connection lost"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->DISCONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    .line 386
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Landroid/content/SharedPreferences;

    const-string v1, "retryInterval"

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 387
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->d:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 390
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "retryInterval"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 393
    const-wide/high16 v2, 0x3fe0000000000000L

    iget-object v4, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    long-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 394
    const-string v2, "orca:MqttPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rescheduling connection in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->k()V

    .line 399
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v2}, Lcom/facebook/orca/net/OrcaNetworkManager;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 402
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(J)V

    .line 403
    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->u:J

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 94
    const-string v0, "orca:MqttPushService"

    const-string v1, "Creating service"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p0}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 97
    const-class v0, Lcom/facebook/orca/push/mqtt/PushHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/PushHandler;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->f:Lcom/facebook/orca/push/mqtt/PushHandler;

    .line 98
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 99
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 100
    const-class v0, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/AuthenticationManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->i:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 101
    const-class v0, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/common/PushDeserialization;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->j:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 102
    const-class v0, Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Lcom/facebook/orca/push/PresenceManager;

    .line 103
    const-class v0, Lcom/facebook/orca/config/OrcaMqttConfig;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaMqttConfig;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->l:Lcom/facebook/orca/config/OrcaMqttConfig;

    .line 104
    const-class v0, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/net/OrcaNetworkManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Lcom/facebook/orca/net/OrcaNetworkManager;

    .line 107
    const-string v0, "com.facebook.orca.push.mqtt.MqttPushService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Landroid/content/SharedPreferences;

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Lcom/facebook/orca/push/mqtt/MqttPushService;)V

    .line 109
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Ljava/util/Random;

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 114
    const-string v0, "orca:MqttPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service destroyed (started="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->r:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->e()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b()V

    .line 121
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 126
    const-string v0, "orca:MqttPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service started with intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "Orca.STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->e()V

    .line 136
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->stopSelf()V

    goto :goto_0

    .line 137
    :cond_2
    const-string v1, "Orca.START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->d()V

    goto :goto_0

    .line 139
    :cond_3
    const-string v1, "Orca.KEEP_ALIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->g()V

    goto :goto_0

    .line 141
    :cond_4
    const-string v1, "Orca.KICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->f()V

    goto :goto_0
.end method
