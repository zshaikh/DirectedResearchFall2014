.class public Lcom/voxel/sdk/ConnectionMonitor;
.super Ljava/lang/Object;
.source "ConnectionMonitor.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;,
        Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;
    }
.end annotation


# static fields
.field private static final MAX_ALLOWED_LATENCY:I = 0xc8

.field private static final MIN_TEST_TIME:I = 0xfa

.field private static final TAG:Ljava/lang/String;

.field private static final TEST_MACHINES_CACHE_TIME:I = 0x927c0


# instance fields
.field private bestDatacenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private checkConnectivityRunnable:Ljava/lang/Runnable;

.field private firstOnline:Z

.field private handler:Landroid/os/Handler;

.field private isChecking:Z

.field private isConnectable:Z

.field private latencyTesters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private minimumLatency:I

.field private networkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private numTestsCompleted:I

.field private numTestsTotal:I

.field private startTime:J

.field private testMachines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/voxel/api/model/TestMachinesResponse$TestMachine;",
            ">;"
        }
    .end annotation
.end field

.field private testMachinesFetchTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/voxel/sdk/ConnectionMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/sdk/ConnectionMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/voxel/sdk/ConnectionMonitor$1;

    invoke-direct {v0, p0}, Lcom/voxel/sdk/ConnectionMonitor$1;-><init>(Lcom/voxel/sdk/ConnectionMonitor;)V

    iput-object v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Lcom/voxel/sdk/ConnectionMonitor$2;

    invoke-direct {v0, p0}, Lcom/voxel/sdk/ConnectionMonitor$2;-><init>(Lcom/voxel/sdk/ConnectionMonitor;)V

    iput-object v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->checkConnectivityRunnable:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->bestDatacenters:Ljava/util/List;

    .line 89
    iput-boolean v1, p0, Lcom/voxel/sdk/ConnectionMonitor;->isChecking:Z

    .line 90
    iput-boolean v1, p0, Lcom/voxel/sdk/ConnectionMonitor;->isConnectable:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->latencyTesters:Ljava/util/List;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->handler:Landroid/os/Handler;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->firstOnline:Z

    .line 95
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/voxel/sdk/ConnectionMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/voxel/sdk/ConnectionMonitor;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/ConnectionMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->checkConnectivityRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/voxel/sdk/ConnectionMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/ConnectionMonitor;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/voxel/sdk/ConnectionMonitor;->startLatencyTest()V

    return-void
.end method

.method static synthetic access$200(Lcom/voxel/sdk/ConnectionMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/ConnectionMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/voxel/sdk/ConnectionMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/ConnectionMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/voxel/sdk/ConnectionMonitor;->isConnectable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/voxel/sdk/ConnectionMonitor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/ConnectionMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->latencyTesters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/voxel/sdk/ConnectionMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/ConnectionMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/voxel/sdk/ConnectionMonitor;->native_cm_latency_destroy(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/voxel/sdk/ConnectionMonitor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/ConnectionMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->testMachines:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/voxel/sdk/ConnectionMonitor;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/ConnectionMonitor;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/voxel/sdk/ConnectionMonitor;->testMachines:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/voxel/sdk/ConnectionMonitor;)J
    .locals 2
    .param p0, "x0"    # Lcom/voxel/sdk/ConnectionMonitor;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->testMachinesFetchTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/voxel/sdk/ConnectionMonitor;J)J
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/ConnectionMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/voxel/sdk/ConnectionMonitor;->testMachinesFetchTime:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/voxel/sdk/ConnectionMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/ConnectionMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/voxel/sdk/ConnectionMonitor;->isChecking:Z

    return p1
.end method

.method private native native_cm_latency_destroy(I)V
.end method

.method private native native_cm_latency_test(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private startLatencyTest()V
    .locals 7

    .prologue
    .line 126
    iget-boolean v3, p0, Lcom/voxel/sdk/ConnectionMonitor;->isChecking:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/voxel/sdk/ConnectionMonitor;->testMachines:Ljava/util/List;

    if-nez v3, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/voxel/sdk/ConnectionMonitor;->isChecking:Z

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/voxel/sdk/ConnectionMonitor;->startTime:J

    .line 131
    const/4 v3, 0x0

    iput v3, p0, Lcom/voxel/sdk/ConnectionMonitor;->numTestsCompleted:I

    .line 132
    iget-object v3, p0, Lcom/voxel/sdk/ConnectionMonitor;->testMachines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/voxel/sdk/ConnectionMonitor;->numTestsTotal:I

    .line 134
    iget-object v3, p0, Lcom/voxel/sdk/ConnectionMonitor;->latencyTesters:Ljava/util/List;

    monitor-enter v3

    .line 135
    :try_start_0
    iget-object v4, p0, Lcom/voxel/sdk/ConnectionMonitor;->latencyTesters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 136
    iget-object v4, p0, Lcom/voxel/sdk/ConnectionMonitor;->testMachines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;

    .line 137
    .local v1, "machine":Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    invoke-virtual {v1}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->getDatacenter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->getPort()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/voxel/sdk/ConnectionMonitor;->native_cm_latency_test(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 139
    .local v2, "pointer":I
    iget-object v4, p0, Lcom/voxel/sdk/ConnectionMonitor;->latencyTesters:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "machine":Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    .end local v2    # "pointer":I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected checkConnectivity()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;-><init>(Lcom/voxel/sdk/ConnectionMonitor;Lcom/voxel/sdk/ConnectionMonitor$1;)V

    .line 122
    .local v0, "task":Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    return-void
.end method

.method public getBestDatacenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->bestDatacenters:Ljava/util/List;

    return-object v0
.end method

.method public getMinimumLatency()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->minimumLatency:I

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/voxel/sdk/ConnectionMonitor;->isConnectable:Z

    return v0
.end method

.method public onLatencyTestComplete(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 20
    .param p1, "datacenter"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "latency"    # I

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->isChecking:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 244
    .end local p1    # "datacenter":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 152
    .restart local p1    # "datacenter":Ljava/lang/String;
    :cond_1
    const/4 v14, 0x0

    .line 153
    .local v14, "machine":Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->testMachines:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;

    .line 154
    .local v13, "m":Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    invoke-virtual {v13}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->getHost()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 155
    move-object v14, v13

    .line 160
    .end local v13    # "m":Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    :cond_3
    if-nez v14, :cond_4

    .line 161
    sget-object v16, Lcom/voxel/sdk/ConnectionMonitor;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Could not find machine for host: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", dc: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->numTestsCompleted:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voxel/sdk/ConnectionMonitor;->numTestsCompleted:I

    .line 166
    move-object v0, v14

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->setLatency(I)V

    .line 169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->numTestsCompleted:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->numTestsTotal:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->startTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    const-wide/16 v18, 0xfa

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->numTestsCompleted:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->numTestsTotal:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 178
    :cond_5
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 179
    .local v6, "dcs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const v15, 0x7fffffff

    .line 181
    .local v15, "minLatency":I
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/voxel/sdk/ConnectionMonitor;->isChecking:Z

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->testMachines:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;

    .line 183
    .restart local v13    # "m":Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    invoke-virtual {v13}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->getDatacenter()Ljava/lang/String;

    move-result-object v16

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    .end local v13    # "m":Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    .local v4, "datacenters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v12, v0

    .line 188
    .local v12, "latencySum":[I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v11, v0

    .line 190
    .local v11, "latencyCount":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->testMachines:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;

    .line 191
    .restart local v13    # "m":Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    invoke-virtual {v13}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->getLatency()I

    move-result v16

    if-eqz v16, :cond_7

    .line 193
    invoke-virtual {v13}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->getDatacenter()Ljava/lang/String;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 194
    .local v10, "idx":I
    aget v16, v12, v10

    invoke-virtual {v13}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->getLatency()I

    move-result v17

    add-int v16, v16, v17

    aput v16, v12, v10

    .line 195
    aget v16, v11, v10

    add-int/lit8 v16, v16, 0x1

    aput v16, v11, v10

    .line 196
    invoke-virtual {v13}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->getLatency()I

    move-result v16

    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_7

    .line 197
    invoke-virtual {v13}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->getLatency()I

    move-result v15

    goto :goto_2

    .line 201
    .end local v10    # "idx":I
    .end local v13    # "m":Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v5, "dcLatency":Ljava/util/List;, "Ljava/util/List<Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;>;"
    const/4 v8, 0x0

    .end local p1    # "datacenter":Ljava/lang/String;
    .local v8, "i":I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    .line 203
    aget v16, v11, v8

    if-eqz v16, :cond_9

    aget v16, v12, v8

    if-nez v16, :cond_a

    .line 202
    :cond_9
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 205
    :cond_a
    aget v16, v12, v8

    aget v17, v11, v8

    div-int v3, v16, v17

    .line 206
    .local v3, "avg":I
    const/16 v16, 0xc8

    move v0, v3

    move/from16 v1, v16

    if-gt v0, v1, :cond_9

    .line 208
    new-instance v7, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;

    invoke-direct {v7}, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;-><init>()V

    .line 209
    .local v7, "entry":Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v7

    iput-object v0, v1, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;->datacenter:Ljava/lang/String;

    .line 210
    iput v3, v7, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;->latency:I

    .line 211
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 215
    .end local v3    # "avg":I
    .end local v7    # "entry":Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;
    :cond_b
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->bestDatacenters:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 218
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;

    .line 219
    .restart local v7    # "entry":Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->bestDatacenters:Ljava/util/List;

    move-object/from16 v16, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;->datacenter:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 221
    .end local v7    # "entry":Lcom/voxel/sdk/ConnectionMonitor$LatencyEntry;
    :cond_c
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voxel/sdk/ConnectionMonitor;->minimumLatency:I

    .line 222
    sget-object v16, Lcom/voxel/sdk/ConnectionMonitor;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "preferred datacenters: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->bestDatacenters:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->bestDatacenters:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_f

    const/16 v16, 0x1

    :goto_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/voxel/sdk/ConnectionMonitor;->isConnectable:Z

    .line 224
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->isConnectable:Z

    move/from16 v16, v0

    if-nez v16, :cond_d

    .line 225
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/voxel/sdk/ConnectionMonitor;->testMachinesFetchTime:J

    .line 228
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->firstOnline:Z

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 229
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getAdManager()Lcom/voxel/sdk/AdManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/voxel/sdk/AdManager;->fetch()V

    .line 230
    :cond_e
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/voxel/sdk/ConnectionMonitor;->firstOnline:Z

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/ConnectionMonitor;->handler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v17, Lcom/voxel/sdk/ConnectionMonitor$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/voxel/sdk/ConnectionMonitor$3;-><init>(Lcom/voxel/sdk/ConnectionMonitor;)V

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 223
    :cond_f
    const/16 v16, 0x0

    goto :goto_6
.end method

.method public startMonitoring(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/voxel/sdk/ConnectionMonitor;->checkConnectivity()V

    .line 102
    return-void
.end method

.method public stopMonitoring()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
