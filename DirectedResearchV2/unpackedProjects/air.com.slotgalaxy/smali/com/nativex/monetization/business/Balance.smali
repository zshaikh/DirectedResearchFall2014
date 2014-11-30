.class public Lcom/nativex/monetization/business/Balance;
.super Ljava/lang/Object;
.source "Balance.java"


# instance fields
.field private amount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Amount"
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayName"
    .end annotation
.end field

.field private externalCurrencyId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExternalCurrencyId"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field private payoutId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PayoutId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/nativex/monetization/business/Balance;->id:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/nativex/monetization/business/Balance;->displayName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/nativex/monetization/business/Balance;->externalCurrencyId:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/nativex/monetization/business/Balance;->amount:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/nativex/monetization/business/Balance;->payoutId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nativex/monetization/business/Balance;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nativex/monetization/business/Balance;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalCurrencyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nativex/monetization/business/Balance;->externalCurrencyId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nativex/monetization/business/Balance;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nativex/monetization/business/Balance;->payoutId:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/nativex/monetization/business/Balance;->amount:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/nativex/monetization/business/Balance;->displayName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setExternalCurrencyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "externalCurrencyId"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/nativex/monetization/business/Balance;->externalCurrencyId:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nativex/monetization/business/Balance;->id:Ljava/lang/String;

    .line 73
    return-void
.end method
