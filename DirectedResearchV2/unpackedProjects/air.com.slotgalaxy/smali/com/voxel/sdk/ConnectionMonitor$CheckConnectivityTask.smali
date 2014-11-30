.class Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;
.super Landroid/os/AsyncTask;
.source "ConnectionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/ConnectionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckConnectivityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/ConnectionMonitor;


# direct methods
.method private constructor <init>(Lcom/voxel/sdk/ConnectionMonitor;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/sdk/ConnectionMonitor;Lcom/voxel/sdk/ConnectionMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/voxel/sdk/ConnectionMonitor;
    .param p2, "x1"    # Lcom/voxel/sdk/ConnectionMonitor$1;

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;-><init>(Lcom/voxel/sdk/ConnectionMonitor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 246
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 251
    iget-object v3, p0, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # getter for: Lcom/voxel/sdk/ConnectionMonitor;->testMachines:Ljava/util/List;
    invoke-static {v3}, Lcom/voxel/sdk/ConnectionMonitor;->access$700(Lcom/voxel/sdk/ConnectionMonitor;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # getter for: Lcom/voxel/sdk/ConnectionMonitor;->testMachinesFetchTime:J
    invoke-static {v5}, Lcom/voxel/sdk/ConnectionMonitor;->access$800(Lcom/voxel/sdk/ConnectionMonitor;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x927c0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 255
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getApiClient()Lcom/voxel/api/ApiClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/api/ApiClient;->getTestMachines()Lcom/voxel/api/model/TestMachinesResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 261
    .local v2, "response":Lcom/voxel/api/model/TestMachinesResponse;
    invoke-virtual {v2}, Lcom/voxel/api/model/TestMachinesResponse;->getTestMachines()Ljava/util/List;

    move-result-object v1

    .line 262
    .local v1, "machines":Ljava/util/List;, "Ljava/util/List<Lcom/voxel/api/model/TestMachinesResponse$TestMachine;>;"
    iget-object v3, p0, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/voxel/sdk/ConnectionMonitor;->testMachinesFetchTime:J
    invoke-static {v3, v4, v5}, Lcom/voxel/sdk/ConnectionMonitor;->access$802(Lcom/voxel/sdk/ConnectionMonitor;J)J

    .line 264
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 267
    :cond_1
    iget-object v3, p0, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # setter for: Lcom/voxel/sdk/ConnectionMonitor;->isConnectable:Z
    invoke-static {v3, v8}, Lcom/voxel/sdk/ConnectionMonitor;->access$302(Lcom/voxel/sdk/ConnectionMonitor;Z)Z

    .line 268
    iget-object v3, p0, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # setter for: Lcom/voxel/sdk/ConnectionMonitor;->isChecking:Z
    invoke-static {v3, v8}, Lcom/voxel/sdk/ConnectionMonitor;->access$902(Lcom/voxel/sdk/ConnectionMonitor;Z)Z

    move-object v3, v7

    .line 282
    .end local v1    # "machines":Ljava/util/List;, "Ljava/util/List<Lcom/voxel/api/model/TestMachinesResponse$TestMachine;>;"
    .end local v2    # "response":Lcom/voxel/api/model/TestMachinesResponse;
    :goto_0
    return-object v3

    .line 257
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v7

    .line 258
    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "machines":Ljava/util/List;, "Ljava/util/List<Lcom/voxel/api/model/TestMachinesResponse$TestMachine;>;"
    .restart local v2    # "response":Lcom/voxel/api/model/TestMachinesResponse;
    :cond_2
    iget-object v3, p0, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # setter for: Lcom/voxel/sdk/ConnectionMonitor;->testMachines:Ljava/util/List;
    invoke-static {v3, v1}, Lcom/voxel/sdk/ConnectionMonitor;->access$702(Lcom/voxel/sdk/ConnectionMonitor;Ljava/util/List;)Ljava/util/List;

    .line 276
    .end local v1    # "machines":Ljava/util/List;, "Ljava/util/List<Lcom/voxel/api/model/TestMachinesResponse$TestMachine;>;"
    .end local v2    # "response":Lcom/voxel/api/model/TestMachinesResponse;
    :cond_3
    iget-object v3, p0, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # getter for: Lcom/voxel/sdk/ConnectionMonitor;->testMachines:Ljava/util/List;
    invoke-static {v3}, Lcom/voxel/sdk/ConnectionMonitor;->access$700(Lcom/voxel/sdk/ConnectionMonitor;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v3, v7

    .line 277
    goto :goto_0

    .line 279
    :cond_4
    iget-object v3, p0, Lcom/voxel/sdk/ConnectionMonitor$CheckConnectivityTask;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # invokes: Lcom/voxel/sdk/ConnectionMonitor;->startLatencyTest()V
    invoke-static {v3}, Lcom/voxel/sdk/ConnectionMonitor;->access$1000(Lcom/voxel/sdk/ConnectionMonitor;)V

    move-object v3, v7

    .line 282
    goto :goto_0
.end method
