.class public Lcom/nativex/monetization/business/Receipt;
.super Ljava/lang/Object;
.source "Receipt.java"


# instance fields
.field private amount:Ljava/lang/Long;
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

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field private payoutId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PayoutId"
    .end annotation
.end field

.field private receiptId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReceiptId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nativex/monetization/business/Receipt;->amount:Ljava/lang/Long;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nativex/monetization/business/Receipt;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalCurrencyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nativex/monetization/business/Receipt;->externalCurrencyId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nativex/monetization/business/Receipt;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nativex/monetization/business/Receipt;->payoutId:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nativex/monetization/business/Receipt;->receiptId:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Long;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/Long;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nativex/monetization/business/Receipt;->amount:Ljava/lang/Long;

    .line 60
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nativex/monetization/business/Receipt;->displayName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setExternalCurrencyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "externalCurrencyId"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nativex/monetization/business/Receipt;->externalCurrencyId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/nativex/monetization/business/Receipt;->id:Ljava/lang/Long;

    .line 33
    return-void
.end method

.method public setPayoutId(Ljava/lang/String;)V
    .locals 0
    .param p1, "payoutId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nativex/monetization/business/Receipt;->payoutId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setReceiptId(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiptId"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/nativex/monetization/business/Receipt;->receiptId:Ljava/lang/String;

    .line 78
    return-void
.end method
