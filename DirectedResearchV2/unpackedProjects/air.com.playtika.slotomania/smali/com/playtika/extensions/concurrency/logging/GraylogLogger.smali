.class public Lcom/playtika/extensions/concurrency/logging/GraylogLogger;
.super Ljava/lang/Object;
.source "GraylogLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;,
        Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Utils;
    }
.end annotation


# static fields
.field public static final FACILITY:Ljava/lang/String; = "vs-android"

.field private static final OS_TYPE:Ljava/lang/String; = "Android"

.field private static instance:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

.field private static volatile singletonInitialized:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private appVer:Ljava/lang/String;

.field private final device:Ljava/lang/String;

.field private minLevel:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

.field private final osVersion:Ljava/lang/String;

.field private final pendingLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private ready:Z

.field private service:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private started:Z

.field private udid:Ljava/lang/String;

.field private urlBase:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->pendingLogs:Ljava/util/LinkedList;

    .line 85
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->osVersion:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->device:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->DEBUG:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    iput-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->minLevel:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    .line 83
    monitor-exit p0

    .line 89
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$0(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->service:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    return-void
.end method

.method static synthetic access$1(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->ready:Z

    return-void
.end method

.method static synthetic access$2(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->service:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    return-object v0
.end method

.method static synthetic access$3(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->urlBase:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->pendingLogs:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/playtika/extensions/concurrency/logging/GraylogLogger;
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->instance:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    if-nez v0, :cond_1

    .line 93
    const-class v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-boolean v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->singletonInitialized:Z

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    invoke-direct {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;-><init>()V

    sput-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->instance:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    .line 96
    const/4 v1, 0x1

    sput-boolean v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->singletonInitialized:Z

    .line 93
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    sget-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->instance:Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    return-object v0

    .line 93
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;

    invoke-direct {v0, p0}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$1;-><init>(Lcom/playtika/extensions/concurrency/logging/GraylogLogger;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized logFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Z)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "fullMsg"    # Ljava/lang/String;
    .param p4, "level"    # Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    .param p5, "file"    # Ljava/lang/String;
    .param p6, "line"    # I
    .param p7, "action"    # Ljava/lang/String;
    .param p9, "useUdid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p8, "additionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v0, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->minLevel:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    invoke-virtual {p4, v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->compareTo(Ljava/lang/Enum;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    .line 183
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_0
    if-eqz p8, :cond_1

    .line 144
    :try_start_1
    invoke-virtual {v0, p8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 147
    :cond_1
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->OS_TYPE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {p2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Utils;->isDefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 149
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->SHORT_MSG:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {p1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Utils;->isDefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 155
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FACILITY:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :goto_1
    invoke-static {p3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Utils;->isDefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FULL_MSG:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_2
    invoke-static {p4}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Utils;->isDefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->LEVEL:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_3
    invoke-static {p5}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Utils;->isDefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FILE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_4
    invoke-static {p6}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Utils;->isDefined(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 166
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->LINE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_5
    iget-object v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->appVer:Ljava/lang/String;

    invoke-static {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Utils;->isDefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 168
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->VERSION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->appVer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_6
    iget-object v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->osVersion:Ljava/lang/String;

    invoke-static {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Utils;->isDefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 170
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->OS_VERSION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_7
    iget-object v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->device:Ljava/lang/String;

    invoke-static {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Utils;->isDefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 172
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->DEVICE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->device:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_8
    invoke-static {p7}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Utils;->isDefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 174
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ACTION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_9
    if-eqz p9, :cond_a

    .line 176
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->UDID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->udid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_a
    iget-boolean v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->ready:Z

    if-eqz v1, :cond_d

    .line 179
    iget-object v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->service:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    invoke-virtual {v1, v0}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->log(Ljava/util/HashMap;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 137
    .end local v0    # "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 151
    .restart local v0    # "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required field \"msg_short\" is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_c
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FACILITY:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vs-android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 181
    :cond_d
    iget-object v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->pendingLogs:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized logSimple(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "shortMsg"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "useUdid"    # Z

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    const-string v1, "vs-android"

    const/4 v3, 0x0

    sget-object v4, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->DEBUG:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, p2

    move v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->logFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLogLevel(Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;)V
    .locals 1
    .param p1, "minLevel"    # Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    .prologue
    .line 126
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 127
    :try_start_0
    iput-object p1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->minLevel:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "urlBase"    # Ljava/lang/String;
    .param p3, "udid"    # Ljava/lang/String;
    .param p4, "appVer"    # Ljava/lang/String;

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->started:Z

    if-nez v1, :cond_0

    .line 106
    iput-object p1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->activity:Landroid/app/Activity;

    .line 107
    iput-object p2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->urlBase:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->udid:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->appVer:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->serviceConnection:Landroid/content/ServiceConnection;

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->started:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->ready:Z

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
