.class public Lcom/voxel/api/model/CreateSessionResponse;
.super Ljava/lang/Object;
.source "CreateSessionResponse.java"


# instance fields
.field private data:Lcom/voxel/util/JSONWrapper;

.field private response:Lcom/voxel/api/model/ServerResponse;


# direct methods
.method public constructor <init>(Lcom/voxel/api/model/ServerResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/voxel/api/model/ServerResponse;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/voxel/api/model/CreateSessionResponse;->response:Lcom/voxel/api/model/ServerResponse;

    .line 11
    invoke-virtual {p1}, Lcom/voxel/api/model/ServerResponse;->getData()Lcom/voxel/util/JSONWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/api/model/CreateSessionResponse;->data:Lcom/voxel/util/JSONWrapper;

    .line 12
    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/voxel/api/model/AppInfo;
    .locals 3

    .prologue
    .line 35
    iget-object v1, p0, Lcom/voxel/api/model/CreateSessionResponse;->data:Lcom/voxel/util/JSONWrapper;

    const-string v2, "app"

    invoke-virtual {v1, v2}, Lcom/voxel/util/JSONWrapper;->getObject(Ljava/lang/String;)Lcom/voxel/util/JSONWrapper;

    move-result-object v0

    .line 36
    .local v0, "appData":Lcom/voxel/util/JSONWrapper;
    if-nez v0, :cond_0

    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/voxel/api/model/AppInfo;

    invoke-direct {v1, v0}, Lcom/voxel/api/model/AppInfo;-><init>(Lcom/voxel/util/JSONWrapper;)V

    goto :goto_0
.end method

.method public getCampaignInfo()Lcom/voxel/api/model/CampaignInfo;
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lcom/voxel/api/model/CreateSessionResponse;->data:Lcom/voxel/util/JSONWrapper;

    const-string v2, "campaign"

    invoke-virtual {v1, v2}, Lcom/voxel/util/JSONWrapper;->getObject(Ljava/lang/String;)Lcom/voxel/util/JSONWrapper;

    move-result-object v0

    .line 43
    .local v0, "campaign":Lcom/voxel/util/JSONWrapper;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/voxel/api/model/CampaignInfo;

    invoke-direct {v1, v0}, Lcom/voxel/api/model/CampaignInfo;-><init>(Lcom/voxel/util/JSONWrapper;)V

    goto :goto_0
.end method

.method public getEndUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/voxel/api/model/CreateSessionResponse;->data:Lcom/voxel/util/JSONWrapper;

    const-string v1, "end_user_id"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/voxel/api/model/CreateSessionResponse;->data:Lcom/voxel/util/JSONWrapper;

    const-string v1, "host"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/voxel/api/model/ServerResponse;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/voxel/api/model/CreateSessionResponse;->response:Lcom/voxel/api/model/ServerResponse;

    return-object v0
.end method

.method public getSessionId()J
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/voxel/api/model/CreateSessionResponse;->data:Lcom/voxel/util/JSONWrapper;

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/voxel/api/model/CreateSessionResponse;->data:Lcom/voxel/util/JSONWrapper;

    const-string v1, "session_token"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartPort()I
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/voxel/api/model/CreateSessionResponse;->data:Lcom/voxel/util/JSONWrapper;

    const-string v1, "start_port"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/voxel/api/model/CreateSessionResponse;->response:Lcom/voxel/api/model/ServerResponse;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/voxel/api/model/CreateSessionResponse;->response:Lcom/voxel/api/model/ServerResponse;

    invoke-virtual {v0}, Lcom/voxel/api/model/ServerResponse;->isSuccess()Z

    move-result v0

    goto :goto_0
.end method
