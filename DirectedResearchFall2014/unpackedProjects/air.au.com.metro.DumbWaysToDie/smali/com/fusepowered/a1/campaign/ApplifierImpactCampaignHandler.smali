.class public Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;
.super Ljava/lang/Object;
.source "ApplifierImpactCampaignHandler.java"

# interfaces
.implements Lcom/fusepowered/a1/cache/IApplifierImpactDownloadListener;


# instance fields
.field private _cacheSolvedMillis:J

.field private _cacheStartMillis:J

.field private _campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

.field private _downloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _handlerListener:Lcom/fusepowered/a1/campaign/IApplifierImpactCampaignHandlerListener;


# direct methods
.method public constructor <init>(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;)V
    .locals 3
    .parameter "campaign"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    .line 16
    iput-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    .line 17
    iput-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/fusepowered/a1/campaign/IApplifierImpactCampaignHandlerListener;

    .line 18
    iput-wide v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_cacheStartMillis:J

    .line 19
    iput-wide v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_cacheSolvedMillis:J

    .line 24
    iput-object p1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    .line 25
    return-void
.end method

.method private addCampaignToDownloads()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    if-nez v1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v2}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_cacheStartMillis:J

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "eventValue"

    const-string v2, "start"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-static {v1, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoCaching(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 162
    iget-object v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-static {v1}, Lcom/fusepowered/a1/cache/ApplifierImpactDownloader;->addDownload(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;)V

    goto :goto_0
.end method

.method private checkFileAndDownloadIfNeeded(Ljava/lang/String;)V
    .locals 1
    .parameter "fileUrl"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->shouldCacheVideo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->isFileInCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/fusepowered/a1/ApplifierImpactUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->hasDownloads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-static {p0}, Lcom/fusepowered/a1/cache/ApplifierImpactDownloader;->addListener(Lcom/fusepowered/a1/cache/IApplifierImpactDownloadListener;)V

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->addCampaignToDownloads()V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->shouldCacheVideo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->isFileOk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/fusepowered/a1/ApplifierImpactUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "The file was not okay, redownloading"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->removeFile(Ljava/lang/String;)V

    .line 127
    invoke-static {p0}, Lcom/fusepowered/a1/cache/ApplifierImpactDownloader;->addListener(Lcom/fusepowered/a1/cache/IApplifierImpactDownloadListener;)V

    .line 128
    invoke-direct {p0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->addCampaignToDownloads()V

    goto :goto_0
.end method

.method private finishDownload(Ljava/lang/String;)Z
    .locals 2
    .parameter "downloadUrl"

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_cacheSolvedMillis:J

    .line 106
    invoke-direct {p0, p1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->removeDownload(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/fusepowered/a1/campaign/IApplifierImpactCampaignHandlerListener;

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0}, Lcom/fusepowered/a1/cache/ApplifierImpactDownloader;->removeListener(Lcom/fusepowered/a1/cache/IApplifierImpactDownloadListener;)V

    .line 111
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFileOk(Ljava/lang/String;)Z
    .locals 12
    .parameter "fileUrl"

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 133
    iget-object v4, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/a1/ApplifierImpactUtils;->getSizeForLocalFile(Ljava/lang/String;)J

    move-result-wide v2

    .line 134
    .local v2, localSize:J
    iget-object v4, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getVideoFileExpectedSize()J

    move-result-wide v0

    .line 136
    .local v0, expectedSize:J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isFileOk: localSize="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expectedSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    cmp-long v4, v2, v8

    if-nez v4, :cond_0

    move v4, v6

    .line 147
    :goto_0
    return v4

    .line 141
    :cond_0
    cmp-long v4, v0, v8

    if-nez v4, :cond_1

    move v4, v7

    .line 142
    goto :goto_0

    .line 144
    :cond_1
    cmp-long v4, v2, v10

    if-lez v4, :cond_2

    cmp-long v4, v0, v10

    if-lez v4, :cond_2

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    move v4, v7

    .line 145
    goto :goto_0

    :cond_2
    move v4, v6

    .line 147
    goto :goto_0
.end method

.method private removeDownload(Ljava/lang/String;)V
    .locals 3
    .parameter "downloadUrl"

    .prologue
    .line 166
    iget-object v2, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v1, -0x1

    .line 170
    .local v1, removeIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 177
    :goto_2
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    move v1, v0

    .line 173
    goto :goto_2

    .line 170
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/fusepowered/a1/campaign/IApplifierImpactCampaignHandlerListener;

    if-eqz v0, :cond_0

    .line 89
    iput-object v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/fusepowered/a1/campaign/IApplifierImpactCampaignHandlerListener;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->clearData()V

    .line 97
    iput-object v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    .line 99
    :cond_2
    return-void
.end method

.method public getCachingDurationInMillis()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 36
    iget-wide v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_cacheStartMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_cacheSolvedMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 37
    iget-wide v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_cacheSolvedMillis:J

    iget-wide v2, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_cacheStartMillis:J

    sub-long/2addr v0, v2

    .line 40
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getCampaign()Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    return-object v0
.end method

.method public hasDownloads()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_downloadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initCampaign()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->checkFileAndDownloadIfNeeded(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/fusepowered/a1/campaign/IApplifierImpactCampaignHandlerListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/fusepowered/a1/campaign/IApplifierImpactCampaignHandlerListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/a1/campaign/IApplifierImpactCampaignHandlerListener;->onCampaignHandled(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onFileDownloadCancelled(Ljava/lang/String;)V
    .locals 3
    .parameter "downloadUrl"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->finishDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download cancelled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v2}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "eventValue"

    const-string v2, "failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-static {v1, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoCaching(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 70
    .end local v0           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public onFileDownloadCompleted(Ljava/lang/String;)V
    .locals 4
    .parameter "downloadUrl"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->finishDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reporting campaign download completion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v2}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "eventValue"

    const-string v2, "completed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "cachingDuration"

    invoke-virtual {p0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->getCachingDurationInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_campaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-static {v1, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoCaching(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 58
    .end local v0           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public setListener(Lcom/fusepowered/a1/campaign/IApplifierImpactCampaignHandlerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->_handlerListener:Lcom/fusepowered/a1/campaign/IApplifierImpactCampaignHandlerListener;

    .line 45
    return-void
.end method
