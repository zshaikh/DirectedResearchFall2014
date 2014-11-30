.class public Lcom/nativex/monetization/smartoffers/GetSmartOffersResponseData;
.super Ljava/lang/Object;
.source "GetSmartOffersResponseData.java"


# instance fields
.field private offers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SmartOffers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/smartoffers/SmartOffer;",
            ">;"
        }
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
.method public getOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/smartoffers/SmartOffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nativex/monetization/smartoffers/GetSmartOffersResponseData;->offers:Ljava/util/List;

    return-object v0
.end method

.method public setOffers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/smartoffers/SmartOffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/smartoffers/SmartOffer;>;"
    iput-object p1, p0, Lcom/nativex/monetization/smartoffers/GetSmartOffersResponseData;->offers:Ljava/util/List;

    .line 19
    return-void
.end method
