.class Lcom/voxel/sdk/ConnectionMonitor$3;
.super Ljava/lang/Object;
.source "ConnectionMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/ConnectionMonitor;->onLatencyTestComplete(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/ConnectionMonitor;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/ConnectionMonitor;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/voxel/sdk/ConnectionMonitor$3;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 236
    iget-object v2, p0, Lcom/voxel/sdk/ConnectionMonitor$3;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # getter for: Lcom/voxel/sdk/ConnectionMonitor;->latencyTesters:Ljava/util/List;
    invoke-static {v2}, Lcom/voxel/sdk/ConnectionMonitor;->access$500(Lcom/voxel/sdk/ConnectionMonitor;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/voxel/sdk/ConnectionMonitor$3;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # getter for: Lcom/voxel/sdk/ConnectionMonitor;->latencyTesters:Ljava/util/List;
    invoke-static {v2}, Lcom/voxel/sdk/ConnectionMonitor;->access$500(Lcom/voxel/sdk/ConnectionMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 238
    .local v1, "pointer":I
    iget-object v2, p0, Lcom/voxel/sdk/ConnectionMonitor$3;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # invokes: Lcom/voxel/sdk/ConnectionMonitor;->native_cm_latency_destroy(I)V
    invoke-static {v2, v1}, Lcom/voxel/sdk/ConnectionMonitor;->access$600(Lcom/voxel/sdk/ConnectionMonitor;I)V

    goto :goto_0

    .line 241
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pointer":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 240
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/voxel/sdk/ConnectionMonitor$3;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # getter for: Lcom/voxel/sdk/ConnectionMonitor;->latencyTesters:Ljava/util/List;
    invoke-static {v2}, Lcom/voxel/sdk/ConnectionMonitor;->access$500(Lcom/voxel/sdk/ConnectionMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 241
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    return-void
.end method
