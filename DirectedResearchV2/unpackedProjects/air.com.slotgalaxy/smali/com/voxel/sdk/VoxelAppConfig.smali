.class public Lcom/voxel/sdk/VoxelAppConfig;
.super Ljava/lang/Object;
.source "VoxelAppConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/sdk/VoxelAppConfig$FormFactor;
    }
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private campaignId:Ljava/lang/Long;

.field private datacenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayPlayback:Ljava/lang/Boolean;

.field private endUserId:Ljava/lang/String;

.field private formFactor:Lcom/voxel/sdk/VoxelAppConfig$FormFactor;

.field private recordTouchEvent:Ljava/lang/Boolean;

.field private saveAppData:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()J
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->campaignId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 25
    const-wide/16 v0, 0x0

    .line 26
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->campaignId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDatacenters()Ljava/util/List;
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
    .line 54
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->datacenters:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayPlayback()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->displayPlayback:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->displayPlayback:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getEndUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->endUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getFormFactor()Lcom/voxel/sdk/VoxelAppConfig$FormFactor;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->formFactor:Lcom/voxel/sdk/VoxelAppConfig$FormFactor;

    return-object v0
.end method

.method public getRecordTouchEvent()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->recordTouchEvent:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->recordTouchEvent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getSaveAppData()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->saveAppData:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->saveAppData:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public hasCampaignId()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->campaignId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayPlayback()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->displayPlayback:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecordTouchEvent()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->recordTouchEvent:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSaveAppData()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->saveAppData:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppConfig;->appId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCampaignId(J)V
    .locals 1
    .param p1, "campaignId"    # J

    .prologue
    .line 30
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->campaignId:Ljava/lang/Long;

    .line 31
    return-void
.end method

.method public setDatacenter(Ljava/lang/String;)V
    .locals 1
    .param p1, "datacenter"    # Ljava/lang/String;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->datacenters:Ljava/util/List;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->datacenters:Ljava/util/List;

    .line 67
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->datacenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDatacenters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "datacenters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppConfig;->datacenters:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setDisplayPlayback(Z)V
    .locals 1
    .param p1, "displayPlayback"    # Z

    .prologue
    .line 113
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->displayPlayback:Ljava/lang/Boolean;

    .line 114
    return-void
.end method

.method public setEndUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "endUserId"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppConfig;->endUserId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setFormFactor(Lcom/voxel/sdk/VoxelAppConfig$FormFactor;)V
    .locals 0
    .param p1, "formFactor"    # Lcom/voxel/sdk/VoxelAppConfig$FormFactor;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppConfig;->formFactor:Lcom/voxel/sdk/VoxelAppConfig$FormFactor;

    .line 76
    return-void
.end method

.method public setRecordTouchEvent(Z)V
    .locals 1
    .param p1, "recordTouchEvent"    # Z

    .prologue
    .line 85
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->recordTouchEvent:Ljava/lang/Boolean;

    .line 86
    return-void
.end method

.method public setSaveAppData(Z)V
    .locals 1
    .param p1, "saveAppData"    # Z

    .prologue
    .line 99
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppConfig;->saveAppData:Ljava/lang/Boolean;

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "VoxelAppConfig <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppConfig;->hasCampaignId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "campaign: %d, "

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppConfig;->campaignId:Ljava/lang/Long;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppConfig;->appId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "app_id: %s, "

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppConfig;->appId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppConfig;->endUserId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 129
    const-string v1, "end_user_id: %s, "

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppConfig;->endUserId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_2
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
