.class Lcom/voxel/sdk/AdManager$FetchAdTask;
.super Landroid/os/AsyncTask;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Lcom/voxel/api/model/CampaignInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/AdManager;


# direct methods
.method private constructor <init>(Lcom/voxel/sdk/AdManager;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/voxel/sdk/AdManager$FetchAdTask;->this$0:Lcom/voxel/sdk/AdManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/sdk/AdManager;Lcom/voxel/sdk/AdManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/voxel/sdk/AdManager;
    .param p2, "x1"    # Lcom/voxel/sdk/AdManager$1;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/voxel/sdk/AdManager$FetchAdTask;-><init>(Lcom/voxel/sdk/AdManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Lcom/voxel/api/model/CampaignInfo;
    .locals 13
    .param p1, "args"    # [Ljava/lang/Long;

    .prologue
    const/4 v12, 0x0

    .line 183
    :try_start_0
    # getter for: Lcom/voxel/sdk/AdManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/voxel/sdk/AdManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Fetching voxel ads"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v9, p1

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 186
    const-string v9, "campaign_id"

    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getApiClient()Lcom/voxel/api/ApiClient;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/voxel/api/ApiClient;->requestAd(Ljava/util/Map;)Lcom/voxel/api/model/CampaignInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 188
    .local v7, "info":Lcom/voxel/api/model/CampaignInfo;
    if-nez v7, :cond_1

    move-object v9, v12

    .line 225
    .end local v7    # "info":Lcom/voxel/api/model/CampaignInfo;
    .end local v8    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v9

    .line 190
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 191
    .local v4, "e":Ljava/io/IOException;
    # getter for: Lcom/voxel/sdk/AdManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/voxel/sdk/AdManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Could not fetch voxel ad"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v9, v12

    .line 192
    goto :goto_0

    .line 196
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "info":Lcom/voxel/api/model/CampaignInfo;
    .restart local v8    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getAssetManager()Lcom/voxel/sdk/AssetManager;

    move-result-object v2

    .line 197
    .local v2, "assetManager":Lcom/voxel/sdk/AssetManager;
    const/4 v0, 0x1

    .line 198
    .local v0, "allFetched":Z
    invoke-virtual {v7}, Lcom/voxel/api/model/CampaignInfo;->getPrerollType()Lcom/voxel/api/model/CampaignInfo$PrerollType;

    move-result-object v9

    sget-object v10, Lcom/voxel/api/model/CampaignInfo$PrerollType;->STATIC:Lcom/voxel/api/model/CampaignInfo$PrerollType;

    if-ne v9, v10, :cond_4

    .line 199
    invoke-virtual {v7}, Lcom/voxel/api/model/CampaignInfo;->getCreatives()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/api/model/CampaignInfo$Creative;

    .line 200
    .local v3, "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    invoke-virtual {v3}, Lcom/voxel/api/model/CampaignInfo$Creative;->getImageURL()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Lcom/voxel/api/model/CampaignInfo$Creative;->getImageURL()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 202
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/voxel/api/model/CampaignInfo$Creative;->setCached(Z)V

    goto :goto_1

    .line 205
    :cond_3
    const/4 v0, 0x0

    .line 206
    invoke-virtual {v3}, Lcom/voxel/api/model/CampaignInfo$Creative;->getAssetKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/voxel/api/model/CampaignInfo$Creative;->getImageURL()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/voxel/sdk/AdManager$FetchAdTask;->this$0:Lcom/voxel/sdk/AdManager;

    invoke-virtual {v2, v9, v10, v7, v11}, Lcom/voxel/sdk/AssetManager;->fetchItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/voxel/sdk/AssetManager$FetchListener;)V

    goto :goto_1

    .line 211
    .end local v3    # "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v7}, Lcom/voxel/api/model/CampaignInfo;->getAppInfo()Lcom/voxel/api/model/AppInfo;

    move-result-object v1

    .line 212
    .local v1, "app":Lcom/voxel/api/model/AppInfo;
    if-eqz v1, :cond_5

    .line 213
    invoke-virtual {v1}, Lcom/voxel/api/model/AppInfo;->getIcon()Lcom/voxel/api/model/AppIcon;

    move-result-object v6

    .line 214
    .local v6, "icon":Lcom/voxel/api/model/AppIcon;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/voxel/api/model/AppIcon;->getURL()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 215
    const/4 v0, 0x0

    .line 216
    invoke-virtual {v6}, Lcom/voxel/api/model/AppIcon;->getAssetKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/voxel/api/model/AppIcon;->getURL()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/voxel/sdk/AdManager$FetchAdTask;->this$0:Lcom/voxel/sdk/AdManager;

    invoke-virtual {v2, v9, v10, v7, v11}, Lcom/voxel/sdk/AssetManager;->fetchItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/voxel/sdk/AssetManager$FetchListener;)V

    .line 222
    .end local v6    # "icon":Lcom/voxel/api/model/AppIcon;
    :cond_5
    if-eqz v0, :cond_6

    move-object v9, v7

    .line 223
    goto :goto_0

    :cond_6
    move-object v9, v12

    .line 225
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 174
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/AdManager$FetchAdTask;->doInBackground([Ljava/lang/Long;)Lcom/voxel/api/model/CampaignInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/voxel/api/model/CampaignInfo;)V
    .locals 1
    .param p1, "campaign"    # Lcom/voxel/api/model/CampaignInfo;

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/voxel/sdk/AdManager$FetchAdTask;->this$0:Lcom/voxel/sdk/AdManager;

    invoke-virtual {v0, p1}, Lcom/voxel/sdk/AdManager;->addCampaign(Lcom/voxel/api/model/CampaignInfo;)V

    .line 233
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 174
    check-cast p1, Lcom/voxel/api/model/CampaignInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/AdManager$FetchAdTask;->onPostExecute(Lcom/voxel/api/model/CampaignInfo;)V

    return-void
.end method
