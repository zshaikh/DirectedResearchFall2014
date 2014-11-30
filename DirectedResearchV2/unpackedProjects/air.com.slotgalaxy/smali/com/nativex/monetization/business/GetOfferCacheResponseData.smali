.class public Lcom/nativex/monetization/business/GetOfferCacheResponseData;
.super Ljava/lang/Object;
.source "GetOfferCacheResponseData.java"


# instance fields
.field private cacheSizeMax:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CacheSizeMax"
    .end annotation
.end field

.field private freeSpaceMin:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FreeSpaceMin"
    .end annotation
.end field

.field private globalFiles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GlobalFiles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation
.end field

.field private offers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Offers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheOffers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->offers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCacheSizeMax()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->cacheSizeMax:I

    return v0
.end method

.method public getFreeSpaceMin()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->freeSpaceMin:I

    return v0
.end method

.method public getGlobalFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->globalFiles:Ljava/util/List;

    return-object v0
.end method

.method public getOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheOffers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->offers:Ljava/util/List;

    return-object v0
.end method

.method public setCacheSizeMax(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "cacheSizeMax"    # Ljava/lang/Integer;

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->cacheSizeMax:I

    .line 28
    return-void
.end method

.method public setFreeSpaceMin(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "freeSpaceMin"    # Ljava/lang/Integer;

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->freeSpaceMin:I

    .line 36
    return-void
.end method

.method public setGlobalFiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "globalFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->globalFiles:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setOffers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheOffers;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheOffers;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->offers:Ljava/util/List;

    .line 52
    return-void
.end method
