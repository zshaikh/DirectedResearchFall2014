.class Lcom/voxel/sdk/VoxelAppView$LogSessionEventTask;
.super Landroid/os/AsyncTask;
.source "VoxelAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/VoxelAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogSessionEventTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/VoxelAppView;


# direct methods
.method private constructor <init>(Lcom/voxel/sdk/VoxelAppView;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppView$LogSessionEventTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/sdk/VoxelAppView;Lcom/voxel/sdk/VoxelAppView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/voxel/sdk/VoxelAppView;
    .param p2, "x1"    # Lcom/voxel/sdk/VoxelAppView$1;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/voxel/sdk/VoxelAppView$LogSessionEventTask;-><init>(Lcom/voxel/sdk/VoxelAppView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 228
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/VoxelAppView$LogSessionEventTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "source"

    const-string v2, "android_client"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "source_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "name"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getApiClient()Lcom/voxel/api/ApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppView$LogSessionEventTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    iget-wide v2, v2, Lcom/voxel/sdk/VoxelAppView;->mSessionId:J

    iget-object v4, p0, Lcom/voxel/sdk/VoxelAppView$LogSessionEventTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    iget-object v4, v4, Lcom/voxel/sdk/VoxelAppView;->mSessionToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/voxel/api/ApiClient;->logSessionEvent(JLjava/lang/String;Ljava/util/Map;)V

    .line 238
    const/4 v1, 0x0

    return-object v1
.end method
