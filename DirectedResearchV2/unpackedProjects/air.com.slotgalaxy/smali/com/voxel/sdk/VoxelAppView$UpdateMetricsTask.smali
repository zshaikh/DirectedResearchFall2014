.class Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;
.super Landroid/os/AsyncTask;
.source "VoxelAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/VoxelAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateMetricsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
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
    .line 213
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/sdk/VoxelAppView;Lcom/voxel/sdk/VoxelAppView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/voxel/sdk/VoxelAppView;
    .param p2, "x1"    # Lcom/voxel/sdk/VoxelAppView$1;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;-><init>(Lcom/voxel/sdk/VoxelAppView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 213
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Boolean;

    .prologue
    .line 217
    :try_start_0
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getApiClient()Lcom/voxel/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    iget-wide v1, v1, Lcom/voxel/sdk/VoxelAppView;->mSessionId:J

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    iget-object v3, v3, Lcom/voxel/sdk/VoxelAppView;->mSessionToken:Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, p0, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    iget-object v5, v5, Lcom/voxel/sdk/VoxelAppView;->mSessionStats:Lcom/voxel/sdk/SessionStats;

    invoke-virtual {v5}, Lcom/voxel/sdk/SessionStats;->getStats()Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/api/ApiClient;->updateSessionMetrics(JLjava/lang/String;ZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 219
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 220
    .local v6, "e":Ljava/io/IOException;
    sget-object v0, Lcom/voxel/sdk/VoxelAppView;->TAG:Ljava/lang/String;

    const-string v1, "Could not log session stats"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 222
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/voxel/sdk/VoxelAppView;->TAG:Ljava/lang/String;

    const-string v1, "Exception while recording session data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
