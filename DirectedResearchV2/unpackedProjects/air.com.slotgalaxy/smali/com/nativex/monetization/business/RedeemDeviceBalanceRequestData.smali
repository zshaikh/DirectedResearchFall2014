.class public Lcom/nativex/monetization/business/RedeemDeviceBalanceRequestData;
.super Ljava/lang/Object;
.source "RedeemDeviceBalanceRequestData.java"


# instance fields
.field private payoutIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PayoutIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSession()Lcom/nativex/monetization/business/Session;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nativex/monetization/business/RedeemDeviceBalanceRequestData;->session:Lcom/nativex/monetization/business/Session;

    return-object v0
.end method

.method public setPayoutIds(Ljava/util/List;)V
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
    .line 48
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/RedeemDeviceBalanceRequestData;->payoutIds:Ljava/util/List;

    .line 49
    return-void
.end method

.method public varargs setPayoutIds([Ljava/lang/String;)V
    .locals 3
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nativex/monetization/business/RedeemDeviceBalanceRequestData;->payoutIds:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/nativex/monetization/business/RedeemDeviceBalanceRequestData;->payoutIds:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setSession(Lcom/nativex/monetization/business/Session;)V
    .locals 0
    .param p1, "session"    # Lcom/nativex/monetization/business/Session;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/nativex/monetization/business/RedeemDeviceBalanceRequestData;->session:Lcom/nativex/monetization/business/Session;

    .line 44
    return-void
.end method
