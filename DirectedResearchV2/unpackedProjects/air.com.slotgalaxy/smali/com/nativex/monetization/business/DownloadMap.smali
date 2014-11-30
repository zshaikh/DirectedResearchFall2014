.class public Lcom/nativex/monetization/business/DownloadMap;
.super Ljava/lang/Object;
.source "DownloadMap.java"


# instance fields
.field private cacheFile:Lcom/nativex/monetization/business/CacheFile;

.field private downloadId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheFile()Lcom/nativex/monetization/business/CacheFile;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nativex/monetization/business/DownloadMap;->cacheFile:Lcom/nativex/monetization/business/CacheFile;

    return-object v0
.end method

.method public getDownloadId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nativex/monetization/business/DownloadMap;->downloadId:Ljava/lang/Long;

    return-object v0
.end method

.method public setCacheFile(Lcom/nativex/monetization/business/CacheFile;)V
    .locals 0
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/nativex/monetization/business/DownloadMap;->cacheFile:Lcom/nativex/monetization/business/CacheFile;

    .line 27
    return-void
.end method

.method public setDownloadId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "downloadId"    # Ljava/lang/Long;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nativex/monetization/business/DownloadMap;->downloadId:Ljava/lang/Long;

    .line 19
    return-void
.end method
