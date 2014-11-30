.class public Lcom/nativex/monetization/business/GetOfferCacheRequestData;
.super Ljava/lang/Object;
.source "GetOfferCacheRequestData.java"


# instance fields
.field cacheErrors:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Errors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheErrorData;",
            ">;"
        }
    .end annotation
.end field

.field private session:Lcom/nativex/monetization/business/Session;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Session"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheErrorData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nativex/monetization/business/GetOfferCacheRequestData;->cacheErrors:Ljava/util/List;

    return-object v0
.end method

.method public getSession()Lcom/nativex/monetization/business/Session;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nativex/monetization/business/GetOfferCacheRequestData;->session:Lcom/nativex/monetization/business/Session;

    return-object v0
.end method

.method public setCacheErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheErrorData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "cacheErrors":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheErrorData;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/GetOfferCacheRequestData;->cacheErrors:Ljava/util/List;

    .line 31
    return-void
.end method

.method public setSession(Lcom/nativex/monetization/business/Session;)V
    .locals 0
    .param p1, "session"    # Lcom/nativex/monetization/business/Session;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/nativex/monetization/business/GetOfferCacheRequestData;->session:Lcom/nativex/monetization/business/Session;

    .line 23
    return-void
.end method
