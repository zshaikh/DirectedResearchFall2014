.class Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;
.super Landroid/os/AsyncTask;
.source "VoxelAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/VoxelAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateSessionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/voxel/sdk/VoxelAppConfig;",
        "Ljava/lang/Void;",
        "Lcom/voxel/api/model/CreateSessionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/VoxelAppView;


# direct methods
.method private constructor <init>(Lcom/voxel/sdk/VoxelAppView;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/sdk/VoxelAppView;Lcom/voxel/sdk/VoxelAppView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/voxel/sdk/VoxelAppView;
    .param p2, "x1"    # Lcom/voxel/sdk/VoxelAppView$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;-><init>(Lcom/voxel/sdk/VoxelAppView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/voxel/sdk/VoxelAppConfig;)Lcom/voxel/api/model/CreateSessionResponse;
    .locals 5
    .param p1, "config"    # [Lcom/voxel/sdk/VoxelAppConfig;

    .prologue
    const/4 v4, 0x0

    .line 172
    :try_start_0
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getApiClient()Lcom/voxel/api/ApiClient;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v4

    .line 180
    :goto_0
    return-object v1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    iget-object v1, v1, Lcom/voxel/sdk/VoxelAppView;->mSessionStats:Lcom/voxel/sdk/SessionStats;

    const-string v2, "connect_delay_api"

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/SessionStats;->startTimerFor(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getApiClient()Lcom/voxel/api/ApiClient;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/voxel/api/ApiClient;->createSession(Lcom/voxel/sdk/VoxelAppConfig;)Lcom/voxel/api/model/CreateSessionResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 177
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    # getter for: Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;
    invoke-static {v1}, Lcom/voxel/sdk/VoxelAppView;->access$200(Lcom/voxel/sdk/VoxelAppView;)Lcom/voxel/sdk/PlayerEngine;

    move-result-object v1

    sget-object v2, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->API_CONNECT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    const-string v3, "Could not connect to API server"

    invoke-virtual {v1, v2, v3}, Lcom/voxel/sdk/PlayerEngine;->dispatchSessionFailed(Lcom/voxel/sdk/PlayerEngine$ErrorCode;Ljava/lang/String;)V

    move-object v1, v4

    .line 180
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 167
    check-cast p1, [Lcom/voxel/sdk/VoxelAppConfig;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->doInBackground([Lcom/voxel/sdk/VoxelAppConfig;)Lcom/voxel/api/model/CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/voxel/api/model/CreateSessionResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/voxel/api/model/CreateSessionResponse;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    iget-object v0, v0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    sget-object v1, Lcom/voxel/sdk/VoxelAppView$State;->STARTING:Lcom/voxel/sdk/VoxelAppView$State;

    if-eq v0, v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 190
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/voxel/api/model/CreateSessionResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    :cond_1
    sget-object v0, Lcom/voxel/sdk/VoxelAppView;->TAG:Ljava/lang/String;

    const-string v1, "Received failure from server"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    # getter for: Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;
    invoke-static {v0}, Lcom/voxel/sdk/VoxelAppView;->access$200(Lcom/voxel/sdk/VoxelAppView;)Lcom/voxel/sdk/PlayerEngine;

    move-result-object v0

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->API_CONNECT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    const-string v2, "Failed to create session"

    invoke-virtual {v0, v1, v2}, Lcom/voxel/sdk/PlayerEngine;->dispatchSessionFailed(Lcom/voxel/sdk/PlayerEngine$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    invoke-virtual {p1}, Lcom/voxel/api/model/CreateSessionResponse;->getSessionId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/voxel/sdk/VoxelAppView;->mSessionId:J

    .line 199
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    invoke-virtual {p1}, Lcom/voxel/api/model/CreateSessionResponse;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/voxel/sdk/VoxelAppView;->mSessionToken:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    iget-object v0, v0, Lcom/voxel/sdk/VoxelAppView;->mSessionStats:Lcom/voxel/sdk/SessionStats;

    const-string v1, "connect_delay_api"

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/SessionStats;->finishTimerFor(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    iget-object v0, v0, Lcom/voxel/sdk/VoxelAppView;->mSessionStats:Lcom/voxel/sdk/SessionStats;

    const-string v1, "connect_delay_vm"

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/SessionStats;->startTimerFor(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    sget-object v1, Lcom/voxel/sdk/VoxelAppView$State;->STARTED:Lcom/voxel/sdk/VoxelAppView$State;

    iput-object v1, v0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    .line 204
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    # getter for: Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;
    invoke-static {v0}, Lcom/voxel/sdk/VoxelAppView;->access$200(Lcom/voxel/sdk/VoxelAppView;)Lcom/voxel/sdk/PlayerEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/voxel/api/model/CreateSessionResponse;->getAppInfo()Lcom/voxel/api/model/AppInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/voxel/api/model/CreateSessionResponse;->getCampaignInfo()Lcom/voxel/api/model/CampaignInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/sdk/PlayerEngine;->setAppInfo(Lcom/voxel/api/model/AppInfo;Lcom/voxel/api/model/CampaignInfo;)V

    .line 206
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    # getter for: Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;
    invoke-static {v0}, Lcom/voxel/sdk/VoxelAppView;->access$200(Lcom/voxel/sdk/VoxelAppView;)Lcom/voxel/sdk/PlayerEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/voxel/api/model/CreateSessionResponse;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/voxel/api/model/CreateSessionResponse;->getStartPort()I

    move-result v2

    invoke-virtual {p1}, Lcom/voxel/api/model/CreateSessionResponse;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/sdk/PlayerEngine;->connectToVM(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->this$0:Lcom/voxel/sdk/VoxelAppView;

    const-string v1, "connecting to VM"

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppView;->logSessionEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 167
    check-cast p1, Lcom/voxel/api/model/CreateSessionResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->onPostExecute(Lcom/voxel/api/model/CreateSessionResponse;)V

    return-void
.end method
