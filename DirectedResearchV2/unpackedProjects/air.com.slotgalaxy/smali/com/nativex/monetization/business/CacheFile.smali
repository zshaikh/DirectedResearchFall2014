.class public Lcom/nativex/monetization/business/CacheFile;
.super Ljava/lang/Object;
.source "CacheFile.java"


# instance fields
.field private CDN:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CDN"
    .end annotation
.end field

.field private EXT:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Ext"
    .end annotation
.end field

.field private MD5:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MD5"
    .end annotation
.end field

.field private cacheId:J

.field private expirationDate:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExpirationDateUTC"
    .end annotation
.end field

.field private fileSize:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FileSize"
    .end annotation
.end field

.field private fileStatus:Lcom/nativex/monetization/enums/FileStatus;

.field private offerId:J

.field private relativeUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RelativeUrl"
    .end annotation
.end field

.field private retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 137
    instance-of v0, p1, Lcom/nativex/monetization/business/CacheFile;

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 142
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 139
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-ne p1, p0, :cond_1

    .line 140
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/nativex/monetization/business/CacheFile;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nativex/monetization/business/CacheFile;->CDN:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheId()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/nativex/monetization/business/CacheFile;->cacheId:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nativex/monetization/business/CacheFile;->CDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/business/CacheFile;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiryTime()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/nativex/monetization/business/CacheFile;->expirationDate:J

    return-wide v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nativex/monetization/business/CacheFile;->EXT:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nativex/monetization/business/CacheFile;->MD5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/business/CacheFile;->EXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/nativex/monetization/business/CacheFile;->fileSize:J

    return-wide v0
.end method

.method public getFileStatus()Lcom/nativex/monetization/enums/FileStatus;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nativex/monetization/business/CacheFile;->fileStatus:Lcom/nativex/monetization/enums/FileStatus;

    return-object v0
.end method

.method public getMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nativex/monetization/business/CacheFile;->MD5:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferId()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/nativex/monetization/business/CacheFile;->offerId:J

    return-wide v0
.end method

.method public getRelativeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nativex/monetization/business/CacheFile;->relativeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/nativex/monetization/business/CacheFile;->retryCount:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/nativex/monetization/business/CacheFile;->offerId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nativex/monetization/business/CacheFile;->CDN:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nativex/monetization/business/CacheFile;->MD5:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/nativex/monetization/business/CacheFile;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/nativex/monetization/business/CacheFile;->fileStatus:Lcom/nativex/monetization/enums/FileStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/nativex/monetization/business/CacheFile;->relativeUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCDN(Ljava/lang/String;)V
    .locals 0
    .param p1, "cdn"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/nativex/monetization/business/CacheFile;->CDN:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setCacheId(J)V
    .locals 0
    .param p1, "cacheid"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/nativex/monetization/business/CacheFile;->cacheId:J

    .line 53
    return-void
.end method

.method public setExpiryTime(J)V
    .locals 0
    .param p1, "expiryTime"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/nativex/monetization/business/CacheFile;->expirationDate:J

    .line 109
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/nativex/monetization/business/CacheFile;->EXT:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .param p1, "fileSize"    # J

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/nativex/monetization/business/CacheFile;->fileSize:J

    .line 117
    return-void
.end method

.method public setFileStatus(Lcom/nativex/monetization/enums/FileStatus;)V
    .locals 0
    .param p1, "downloadStatus"    # Lcom/nativex/monetization/enums/FileStatus;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nativex/monetization/business/CacheFile;->fileStatus:Lcom/nativex/monetization/enums/FileStatus;

    .line 77
    return-void
.end method

.method public setMD5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/nativex/monetization/business/CacheFile;->MD5:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setOfferId(J)V
    .locals 0
    .param p1, "offerid"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/nativex/monetization/business/CacheFile;->offerId:J

    .line 61
    return-void
.end method

.method public setRelaiveUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nativex/monetization/business/CacheFile;->relativeUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setRetryCount(I)V
    .locals 0
    .param p1, "retryCount"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/nativex/monetization/business/CacheFile;->retryCount:I

    .line 133
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 153
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
