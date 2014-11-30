.class public Lcom/facebook/orca/push/mqtt/MqttConnectionManager;
.super Ljava/lang/Object;
.source "MqttConnectionManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

.field private final b:Lcom/facebook/orca/auth/AuthenticationManager;

.field private final c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final d:Landroid/net/ConnectivityManager;

.field private final e:Lcom/facebook/orca/config/OrcaMqttConfig;

.field private final f:Lcom/facebook/orca/push/mqtt/protocol/MqttSsl;

.field private final g:Landroid/os/Handler;

.field private h:Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;

.field private i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

.field private j:Lcom/facebook/orca/push/mqtt/MqttPushService;

.field private k:J

.field private l:J

.field private m:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private n:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private o:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field

.field private q:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Landroid/net/ConnectivityManager;Lcom/facebook/orca/config/OrcaMqttConfig;Lcom/facebook/orca/push/mqtt/protocol/MqttSsl;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->p:Ljava/util/Set;

    .line 83
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->j()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->q:Lcom/google/common/collect/Multimap;

    .line 93
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a:Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    .line 94
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 95
    iput-object p3, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 96
    iput-object p4, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d:Landroid/net/ConnectivityManager;

    .line 97
    iput-object p5, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/config/OrcaMqttConfig;

    .line 98
    iput-object p6, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f:Lcom/facebook/orca/push/mqtt/protocol/MqttSsl;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->g:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/facebook/orca/push/mqtt/protocol/MqttClient;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->q:Lcom/google/common/collect/Multimap;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->p:Ljava/util/Set;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Z

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    if-nez v0, :cond_2

    .line 146
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i()V

    .line 156
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->l:J

    iget-wide v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->o:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->k()V

    .line 165
    :cond_1
    :goto_1
    return-void

    .line 147
    :cond_2
    iget-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->k:J

    iget-wide v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 149
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->l()V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->l()V

    goto :goto_0

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    if-eqz v0, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j()V

    goto :goto_1
.end method

.method private i()V
    .locals 8

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a:Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a()Ljava/lang/String;

    move-result-object v4

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/config/OrcaMqttConfig;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v0, "orca:MqttConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/config/OrcaMqttConfig;

    invoke-virtual {v2}, Lcom/facebook/orca/config/OrcaMqttConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/config/OrcaMqttConfig;

    invoke-virtual {v2}, Lcom/facebook/orca/config/OrcaMqttConfig;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->f()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v5

    .line 178
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->a()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v6

    .line 179
    new-instance v0, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/config/OrcaMqttConfig;

    invoke-virtual {v1}, Lcom/facebook/orca/config/OrcaMqttConfig;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/config/OrcaMqttConfig;

    invoke-virtual {v2}, Lcom/facebook/orca/config/OrcaMqttConfig;->b()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/config/OrcaMqttConfig;

    invoke-virtual {v3}, Lcom/facebook/orca/config/OrcaMqttConfig;->c()Z

    move-result v3

    iget-object v7, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/config/OrcaMqttConfig;

    invoke-virtual {v7}, Lcom/facebook/orca/config/OrcaMqttConfig;->d()S

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    int-to-short v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h:Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;

    .line 183
    new-instance v0, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f:Lcom/facebook/orca/push/mqtt/protocol/MqttSsl;

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h:Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;-><init>(Lcom/facebook/orca/push/mqtt/protocol/MqttSsl;Lcom/facebook/orca/push/mqtt/protocol/MqttParameters;)V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    .line 184
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/push/mqtt/protocol/MqttClient;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->a(Lcom/facebook/orca/push/mqtt/protocol/MqttClientCallback;)V

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->a()V

    .line 186
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    new-instance v1, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;

    const-string v2, "/orca_message_notifications"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;)V

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->k:J
    :try_end_0
    .catch Lcom/facebook/orca/push/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "orca:MqttConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MqttException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b()V

    goto/16 :goto_0

    .line 190
    :cond_1
    const-string v3, "NULL"

    goto :goto_1
.end method

.method private j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    .line 201
    iput-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    .line 202
    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->a(Lcom/facebook/orca/push/mqtt/protocol/MqttClientCallback;)V

    .line 203
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b()V

    .line 204
    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->d()V

    .line 206
    :cond_0
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    const-string v1, "/keepalive"

    const/4 v2, 0x0

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->a(Ljava/lang/String;[BIZ)I

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->l:J
    :try_end_0
    .catch Lcom/facebook/orca/push/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string v1, "orca:MqttConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MqttException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->d()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    .line 222
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b()V

    goto :goto_0

    .line 219
    :cond_1
    const-string v3, "NULL"

    goto :goto_1
.end method

.method private l()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "orca:MqttConnectionManager"

    const-string v1, "Reconnecting..."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j()V

    .line 232
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i()V

    .line 235
    :cond_0
    return-void
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;I)I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 254
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    .line 255
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, v4

    .line 267
    :goto_0
    return v0

    .line 260
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->p:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catch Lcom/facebook/orca/push/mqtt/protocol/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :try_start_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->d(Ljava/lang/String;)[B

    move-result-object v2

    .line 262
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, p3, v3}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->a(Ljava/lang/String;[BIZ)I

    move-result v0

    .line 263
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->p:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/facebook/orca/push/mqtt/protocol/MqttException; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    :catch_0
    move-exception v0

    move v0, v4

    .line 267
    goto :goto_0
.end method

.method a()V
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Z

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:J

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->o:J

    .line 110
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h()V

    .line 111
    return-void
.end method

.method a(Lcom/facebook/orca/push/mqtt/MqttPushService;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j:Lcom/facebook/orca/push/mqtt/MqttPushService;

    .line 104
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;)V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->q:Lcom/google/common/collect/Multimap;

    monitor-enter v0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->q:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Multimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;J)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    .line 274
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->p:Ljava/util/Set;

    monitor-enter v2

    .line 275
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;I)I

    move-result v3

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 277
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 278
    iget-object v6, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->p:Ljava/util/Set;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 279
    iget-object v4, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->p:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 280
    monitor-exit v2

    move v0, v8

    .line 284
    :goto_1
    return v0

    .line 282
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->p:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    :goto_2
    monitor-exit v2

    goto :goto_1

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 284
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method b()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Z

    .line 115
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h()V

    .line 116
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->q:Lcom/google/common/collect/Multimap;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->q:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Multimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    monitor-exit v0

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method c()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->o:J

    .line 120
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h()V

    .line 121
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v1, "com.facebook.orca.ACTION_PERSISTEN_CHANNEL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->c(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a()V

    .line 126
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v1, "com.facebook.orca.ACTION_PERSISTEN_CHANNEL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->c(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b()V

    .line 132
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    .line 245
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Lcom/facebook/orca/push/mqtt/protocol/MqttClient;

    .line 250
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/MqttClient;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
