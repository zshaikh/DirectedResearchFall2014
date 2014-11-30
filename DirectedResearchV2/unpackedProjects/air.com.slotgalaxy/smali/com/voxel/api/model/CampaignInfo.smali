.class public Lcom/voxel/api/model/CampaignInfo;
.super Ljava/lang/Object;
.source "CampaignInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/api/model/CampaignInfo$Creative;,
        Lcom/voxel/api/model/CampaignInfo$PostrollType;,
        Lcom/voxel/api/model/CampaignInfo$PrerollType;
    }
.end annotation


# instance fields
.field private mCreatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/voxel/api/model/CampaignInfo$Creative;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Lcom/voxel/util/JSONWrapper;


# direct methods
.method public constructor <init>(Lcom/voxel/util/JSONWrapper;)V
    .locals 0
    .param p1, "data"    # Lcom/voxel/util/JSONWrapper;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    .line 24
    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/voxel/api/model/AppInfo;
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v2, "app"

    invoke-virtual {v1, v2}, Lcom/voxel/util/JSONWrapper;->getObject(Ljava/lang/String;)Lcom/voxel/util/JSONWrapper;

    move-result-object v0

    .line 119
    .local v0, "json":Lcom/voxel/util/JSONWrapper;
    if-nez v0, :cond_0

    .line 120
    const/4 v1, 0x0

    .line 121
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/voxel/api/model/AppInfo;

    invoke-direct {v1, v0}, Lcom/voxel/api/model/AppInfo;-><init>(Lcom/voxel/util/JSONWrapper;)V

    goto :goto_0
.end method

.method public getCampaignId()J
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "campaign_id"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCloseDelay()I
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "close_delay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCreativeByOrientation(Lcom/voxel/sdk/Config$Orientation;)Lcom/voxel/api/model/CampaignInfo$Creative;
    .locals 5
    .param p1, "orientation"    # Lcom/voxel/sdk/Config$Orientation;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/voxel/api/model/CampaignInfo;->loadCreatives()V

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/voxel/sdk/Config;->getDeviceType()Lcom/voxel/sdk/Config$DeviceType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/voxel/sdk/Config$DeviceType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/voxel/sdk/Config$Orientation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lcom/voxel/api/model/CampaignInfo;->mCreatives:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/api/model/CampaignInfo$Creative;

    .line 135
    .local v0, "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    invoke-virtual {v0}, Lcom/voxel/api/model/CampaignInfo$Creative;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 139
    .end local v0    # "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getCreatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/voxel/api/model/CampaignInfo$Creative;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/voxel/api/model/CampaignInfo;->loadCreatives()V

    .line 126
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mCreatives:Ljava/util/List;

    return-object v0
.end method

.method public getDuration()I
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "duration"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFailureURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "failure_url"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostrollOverlayDuration()I
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "postroll_overlay_duration"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPostrollOverlayText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "postroll_overlay_text"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostrollType()Lcom/voxel/api/model/CampaignInfo$PostrollType;
    .locals 8

    .prologue
    .line 96
    iget-object v5, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v6, "postroll_type"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 97
    .local v4, "type":I
    invoke-static {}, Lcom/voxel/api/model/CampaignInfo$PostrollType;->values()[Lcom/voxel/api/model/CampaignInfo$PostrollType;

    move-result-object v0

    .local v0, "arr$":[Lcom/voxel/api/model/CampaignInfo$PostrollType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 98
    .local v3, "t":Lcom/voxel/api/model/CampaignInfo$PostrollType;
    invoke-virtual {v3}, Lcom/voxel/api/model/CampaignInfo$PostrollType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v5, v3

    .line 102
    .end local v3    # "t":Lcom/voxel/api/model/CampaignInfo$PostrollType;
    :goto_1
    return-object v5

    .line 97
    .restart local v3    # "t":Lcom/voxel/api/model/CampaignInfo$PostrollType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v3    # "t":Lcom/voxel/api/model/CampaignInfo$PostrollType;
    :cond_1
    sget-object v5, Lcom/voxel/api/model/CampaignInfo$PostrollType;->NONE:Lcom/voxel/api/model/CampaignInfo$PostrollType;

    goto :goto_1
.end method

.method public getPrerollAudioEnabled()Z
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "preroll_audio_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPrerollButtonText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "preroll_button"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrerollCloseDelay()I
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "preroll_close_delay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPrerollDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "preroll_description"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrerollOverlayStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "preroll_overlay_style"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrerollType()Lcom/voxel/api/model/CampaignInfo$PrerollType;
    .locals 8

    .prologue
    .line 63
    iget-object v5, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v6, "preroll_type"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 64
    .local v4, "type":I
    invoke-static {}, Lcom/voxel/api/model/CampaignInfo$PrerollType;->values()[Lcom/voxel/api/model/CampaignInfo$PrerollType;

    move-result-object v0

    .local v0, "arr$":[Lcom/voxel/api/model/CampaignInfo$PrerollType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 65
    .local v3, "t":Lcom/voxel/api/model/CampaignInfo$PrerollType;
    invoke-virtual {v3}, Lcom/voxel/api/model/CampaignInfo$PrerollType;->ordinal()I

    move-result v5

    if-ne v5, v4, :cond_0

    move-object v5, v3

    .line 68
    .end local v3    # "t":Lcom/voxel/api/model/CampaignInfo$PrerollType;
    :goto_1
    return-object v5

    .line 64
    .restart local v3    # "t":Lcom/voxel/api/model/CampaignInfo$PrerollType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "t":Lcom/voxel/api/model/CampaignInfo$PrerollType;
    :cond_1
    sget-object v5, Lcom/voxel/api/model/CampaignInfo$PrerollType;->NONE:Lcom/voxel/api/model/CampaignInfo$PrerollType;

    goto :goto_1
.end method

.method public getStore()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "store"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "store_id"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "success_url"

    invoke-virtual {v0, v1}, Lcom/voxel/util/JSONWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPostroll()Z
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/voxel/api/model/CampaignInfo;->getPostrollType()Lcom/voxel/api/model/CampaignInfo$PostrollType;

    move-result-object v0

    sget-object v1, Lcom/voxel/api/model/CampaignInfo$PostrollType;->NONE:Lcom/voxel/api/model/CampaignInfo$PostrollType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreroll()Z
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/voxel/api/model/CampaignInfo;->getPrerollType()Lcom/voxel/api/model/CampaignInfo$PrerollType;

    move-result-object v0

    sget-object v1, Lcom/voxel/api/model/CampaignInfo$PrerollType;->NONE:Lcom/voxel/api/model/CampaignInfo$PrerollType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTappableCreative()Z
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "tappable_creative"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected loadCreatives()V
    .locals 9

    .prologue
    .line 143
    iget-object v4, p0, Lcom/voxel/api/model/CampaignInfo;->mCreatives:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 157
    :cond_0
    return-void

    .line 145
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/voxel/api/model/CampaignInfo;->mCreatives:Ljava/util/List;

    .line 146
    iget-object v4, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v5, "creatives"

    invoke-virtual {v4, v5}, Lcom/voxel/util/JSONWrapper;->getObject(Ljava/lang/String;)Lcom/voxel/util/JSONWrapper;

    move-result-object v2

    .line 147
    .local v2, "creatives":Lcom/voxel/util/JSONWrapper;
    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v2}, Lcom/voxel/util/JSONWrapper;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 150
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/voxel/util/JSONWrapper;->getObject(Ljava/lang/String;)Lcom/voxel/util/JSONWrapper;

    move-result-object v1

    .line 152
    .local v1, "creativeData":Lcom/voxel/util/JSONWrapper;
    # invokes: Lcom/voxel/api/model/CampaignInfo$Creative;->fromJSON(Lcom/voxel/util/JSONWrapper;)Lcom/voxel/api/model/CampaignInfo$Creative;
    invoke-static {v1}, Lcom/voxel/api/model/CampaignInfo$Creative;->access$000(Lcom/voxel/util/JSONWrapper;)Lcom/voxel/api/model/CampaignInfo$Creative;

    move-result-object v0

    .line 153
    .local v0, "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    const-string v4, "campaign_%d_%s_img"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/voxel/api/model/CampaignInfo;->getCampaignId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/voxel/api/model/CampaignInfo$Creative;->getType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/voxel/api/model/CampaignInfo$Creative;->assetKey:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/voxel/api/model/CampaignInfo$Creative;->access$102(Lcom/voxel/api/model/CampaignInfo$Creative;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object v4, p0, Lcom/voxel/api/model/CampaignInfo;->mCreatives:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public shouldDisplayStoreButton()Z
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/voxel/api/model/CampaignInfo;->mData:Lcom/voxel/util/JSONWrapper;

    const-string v1, "display_store_button"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/voxel/util/JSONWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
