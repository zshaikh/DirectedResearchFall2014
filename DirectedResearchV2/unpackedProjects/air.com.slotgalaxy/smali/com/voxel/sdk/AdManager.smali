.class public Lcom/voxel/sdk/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/voxel/sdk/AssetManager$FetchListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/sdk/AdManager$1;,
        Lcom/voxel/sdk/AdManager$FetchAdTask;,
        Lcom/voxel/sdk/AdManager$AdFetchListener;
    }
.end annotation


# static fields
.field private static final NUM_TO_FETCH:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private campaigns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/voxel/api/model/CampaignInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Lcom/voxel/sdk/AdManager$AdFetchListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/voxel/sdk/AdManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/sdk/AdManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/sdk/AdManager;->campaigns:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/sdk/AdManager;->listeners:Ljava/util/Map;

    .line 37
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/voxel/sdk/AdManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected addCampaign(Lcom/voxel/api/model/CampaignInfo;)V
    .locals 6
    .param p1, "campaignInfo"    # Lcom/voxel/api/model/CampaignInfo;

    .prologue
    .line 96
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/voxel/sdk/AdManager;->campaigns:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v3, p0, Lcom/voxel/sdk/AdManager;->listeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/voxel/api/model/CampaignInfo;->getCampaignId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 103
    .local v0, "campaignListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/voxel/sdk/AdManager$AdFetchListener;>;"
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/sdk/AdManager$AdFetchListener;

    .line 107
    .local v2, "listener":Lcom/voxel/sdk/AdManager$AdFetchListener;
    invoke-interface {v2, p1}, Lcom/voxel/sdk/AdManager$AdFetchListener;->onAdFetched(Lcom/voxel/api/model/CampaignInfo;)V

    goto :goto_1

    .line 111
    .end local v2    # "listener":Lcom/voxel/sdk/AdManager$AdFetchListener;
    :cond_2
    iget-object v3, p0, Lcom/voxel/sdk/AdManager;->listeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/voxel/api/model/CampaignInfo;->getCampaignId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected displayedAd(Lcom/voxel/api/model/CampaignInfo;)V
    .locals 4
    .param p1, "campaign"    # Lcom/voxel/api/model/CampaignInfo;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v2, "show_interstitial"

    invoke-static {v2, p1}, Lcom/voxel/sdk/VoxelSDK;->reportEvent(Ljava/lang/String;Lcom/voxel/api/model/CampaignInfo;)V

    .line 120
    invoke-virtual {p1}, Lcom/voxel/api/model/CampaignInfo;->getCreatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/api/model/CampaignInfo$Creative;

    .line 121
    .local v0, "c":Lcom/voxel/api/model/CampaignInfo$Creative;
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getAssetManager()Lcom/voxel/sdk/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/voxel/api/model/CampaignInfo$Creative;->getAssetKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/voxel/sdk/AssetManager;->cleanup(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    .end local v0    # "c":Lcom/voxel/api/model/CampaignInfo$Creative;
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/sdk/AdManager;->fetch()V

    goto :goto_0
.end method

.method public fetch()V
    .locals 7

    .prologue
    .line 40
    iget-object v1, p0, Lcom/voxel/sdk/AdManager;->campaigns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/voxel/sdk/AdManager$FetchAdTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/voxel/sdk/AdManager$FetchAdTask;-><init>(Lcom/voxel/sdk/AdManager;Lcom/voxel/sdk/AdManager$1;)V

    .line 43
    .local v0, "fetchTask":Lcom/voxel/sdk/AdManager$FetchAdTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    const-wide/16 v3, 0x2

    iget-object v5, p0, Lcom/voxel/sdk/AdManager;->campaigns:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/AdManager$FetchAdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public fetch(JLcom/voxel/sdk/AdManager$AdFetchListener;)V
    .locals 8
    .param p1, "campaignId"    # J
    .param p3, "listener"    # Lcom/voxel/sdk/AdManager$AdFetchListener;

    .prologue
    const/4 v7, 0x0

    .line 48
    invoke-virtual {p0, p1, p2, v7}, Lcom/voxel/sdk/AdManager;->getCampaignById(JZ)Lcom/voxel/api/model/CampaignInfo;

    move-result-object v2

    .line 49
    .local v2, "info":Lcom/voxel/api/model/CampaignInfo;
    if-eqz v2, :cond_1

    .line 50
    if-eqz p3, :cond_0

    .line 51
    invoke-interface {p3, v2}, Lcom/voxel/sdk/AdManager$AdFetchListener;->onAdFetched(Lcom/voxel/api/model/CampaignInfo;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/voxel/sdk/AdManager;->listeners:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 56
    .local v0, "existingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/voxel/sdk/AdManager$AdFetchListener;>;"
    if-nez v0, :cond_2

    .line 57
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 59
    iget-object v3, p0, Lcom/voxel/sdk/AdManager;->listeners:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_2
    if-eqz p3, :cond_3

    .line 62
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_3
    new-instance v1, Lcom/voxel/sdk/AdManager$FetchAdTask;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/voxel/sdk/AdManager$FetchAdTask;-><init>(Lcom/voxel/sdk/AdManager;Lcom/voxel/sdk/AdManager$1;)V

    .line 64
    .local v1, "fetchTask":Lcom/voxel/sdk/AdManager$FetchAdTask;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Long;

    new-instance v4, Ljava/lang/Long;

    const-wide/16 v5, 0x1

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v3, v7

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/voxel/sdk/AdManager$FetchAdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getCampaignById(JZ)Lcom/voxel/api/model/CampaignInfo;
    .locals 6
    .param p1, "campaignId"    # J
    .param p3, "remove"    # Z

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, "result":Lcom/voxel/api/model/CampaignInfo;
    iget-object v3, p0, Lcom/voxel/sdk/AdManager;->campaigns:Ljava/util/List;

    monitor-enter v3

    .line 70
    :try_start_0
    iget-object v4, p0, Lcom/voxel/sdk/AdManager;->campaigns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/api/model/CampaignInfo;

    .line 71
    .local v1, "info":Lcom/voxel/api/model/CampaignInfo;
    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getCampaignId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 72
    move-object v2, v1

    .line 76
    .end local v1    # "info":Lcom/voxel/api/model/CampaignInfo;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    .line 78
    iget-object v3, p0, Lcom/voxel/sdk/AdManager;->campaigns:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_2
    return-object v2

    .line 76
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getNextAd()Lcom/voxel/api/model/CampaignInfo;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/voxel/sdk/AdManager;->hasAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/voxel/sdk/AdManager;->fetch()V

    .line 86
    const/4 v0, 0x0

    .line 88
    .end local p0    # "this":Lcom/voxel/sdk/AdManager;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/voxel/sdk/AdManager;
    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/AdManager;->campaigns:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/voxel/sdk/AdManager;
    check-cast p0, Lcom/voxel/api/model/CampaignInfo;

    move-object v0, p0

    goto :goto_0
.end method

.method public hasAd()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/voxel/sdk/AdManager;->campaigns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFetchComplete(ZLcom/voxel/sdk/AssetManager$FetchItem;)V
    .locals 8
    .param p1, "success"    # Z
    .param p2, "item"    # Lcom/voxel/sdk/AssetManager$FetchItem;

    .prologue
    .line 131
    invoke-virtual {p2}, Lcom/voxel/sdk/AssetManager$FetchItem;->getReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/api/model/CampaignInfo;

    .line 132
    .local v1, "campaign":Lcom/voxel/api/model/CampaignInfo;
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/voxel/sdk/AssetManager$FetchItem;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    sget-object v4, Lcom/voxel/sdk/VoxelSDK;->overrideCampaignId:Ljava/lang/Long;

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getCampaignId()J

    move-result-wide v4

    sget-object v6, Lcom/voxel/sdk/VoxelSDK;->overrideCampaignId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 139
    sget-object v4, Lcom/voxel/sdk/AdManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping unrequested campaign "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getCampaignId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_2
    const/4 v0, 0x1

    .line 145
    .local v0, "allFetched":Z
    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getPrerollType()Lcom/voxel/api/model/CampaignInfo$PrerollType;

    move-result-object v4

    sget-object v5, Lcom/voxel/api/model/CampaignInfo$PrerollType;->STATIC:Lcom/voxel/api/model/CampaignInfo$PrerollType;

    if-ne v4, v5, :cond_3

    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getCreatives()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    const/4 v0, 0x0

    .line 150
    :cond_3
    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getPrerollType()Lcom/voxel/api/model/CampaignInfo$PrerollType;

    move-result-object v4

    sget-object v5, Lcom/voxel/api/model/CampaignInfo$PrerollType;->STATIC:Lcom/voxel/api/model/CampaignInfo$PrerollType;

    if-ne v4, v5, :cond_6

    .line 151
    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getCreatives()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/api/model/CampaignInfo$Creative;

    .line 152
    .local v2, "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    invoke-virtual {v2}, Lcom/voxel/api/model/CampaignInfo$Creative;->getAssetKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/voxel/sdk/AssetManager$FetchItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 153
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/voxel/api/model/CampaignInfo$Creative;->setCached(Z)V

    .line 155
    :cond_5
    invoke-virtual {v2}, Lcom/voxel/api/model/CampaignInfo$Creative;->isCached()Z

    move-result v4

    if-nez v4, :cond_4

    .line 156
    const/4 v0, 0x0

    .line 166
    .end local v2    # "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    if-eqz v0, :cond_0

    .line 167
    sget-object v4, Lcom/voxel/sdk/AdManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "All creatives fetched for campaign "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getCampaignId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0, v1}, Lcom/voxel/sdk/AdManager;->addCampaign(Lcom/voxel/api/model/CampaignInfo;)V

    goto/16 :goto_0
.end method
