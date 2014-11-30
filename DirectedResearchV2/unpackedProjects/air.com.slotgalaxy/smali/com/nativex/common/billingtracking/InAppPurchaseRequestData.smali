.class public Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;
.super Ljava/lang/Object;
.source "InAppPurchaseRequestData.java"


# instance fields
.field private advertiserSession:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AdvertiserSessionId"
    .end annotation
.end field

.field private costPerItem:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CostPerItem"
    .end annotation
.end field

.field private currencyLocale:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CurrencyLocale"
    .end annotation
.end field

.field private productTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductTitle"
    .end annotation
.end field

.field private publisherSession:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PublisherSessionId"
    .end annotation
.end field

.field private quantity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Quantity"
    .end annotation
.end field

.field private storeProductId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreProductId"
    .end annotation
.end field

.field private storeTransactionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreTransactionId"
    .end annotation
.end field

.field private storeTransactionTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreTransactionTimeUtc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvertiserSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->advertiserSession:Ljava/lang/String;

    return-object v0
.end method

.method public getCostPerItem()F
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->costPerItem:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getCurrencyLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->currencyLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getProductTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->productTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->publisherSession:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->quantity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStoreProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->storeProductId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->storeTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreTransactionTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->storeTransactionTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvertiserSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "advertiserSession"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->advertiserSession:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setCostPerItem(F)V
    .locals 1
    .param p1, "costPerItem"    # F

    .prologue
    .line 84
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->costPerItem:Ljava/lang/Float;

    .line 85
    return-void
.end method

.method public setCurrencyLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyLocale"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->currencyLocale:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setProductTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "productTitle"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->productTitle:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setPublisherSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisherSession"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->publisherSession:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setQuantity(I)V
    .locals 1
    .param p1, "quantity"    # I

    .prologue
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->quantity:Ljava/lang/Integer;

    .line 94
    return-void
.end method

.method public setStoreProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeProductId"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->storeProductId:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setStoreTransactionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeTransactionId"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->storeTransactionId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setStoreTransactionTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeTransactionTime"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->storeTransactionTime:Ljava/lang/String;

    .line 151
    return-void
.end method
