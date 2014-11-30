.class public Lcom/nativex/common/billingtracking/BillingInputs;
.super Ljava/lang/Object;
.source "BillingInputs.java"


# instance fields
.field private costPerItem:F

.field private currencyLocale:Ljava/lang/String;

.field private productTitle:Ljava/lang/String;

.field private quantity:I

.field private storeProductId:Ljava/lang/String;

.field private storeTransactionId:Ljava/lang/String;

.field private storeTransactionTimeUTC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCostPerItem()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/nativex/common/billingtracking/BillingInputs;->costPerItem:F

    return v0
.end method

.method public getCurrencyLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nativex/common/billingtracking/BillingInputs;->currencyLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getProductTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nativex/common/billingtracking/BillingInputs;->productTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/nativex/common/billingtracking/BillingInputs;->quantity:I

    return v0
.end method

.method public getStoreProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nativex/common/billingtracking/BillingInputs;->storeProductId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nativex/common/billingtracking/BillingInputs;->storeTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreTransactionTimeUTC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nativex/common/billingtracking/BillingInputs;->storeTransactionTimeUTC:Ljava/lang/String;

    return-object v0
.end method

.method public setCostPerItem(F)V
    .locals 0
    .param p1, "costPerItem"    # F

    .prologue
    .line 136
    iput p1, p0, Lcom/nativex/common/billingtracking/BillingInputs;->costPerItem:F

    .line 137
    return-void
.end method

.method public setCurrencyLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyLocale"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/nativex/common/billingtracking/BillingInputs;->currencyLocale:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setProductTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "productTitle"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/nativex/common/billingtracking/BillingInputs;->productTitle:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/nativex/common/billingtracking/BillingInputs;->quantity:I

    .line 177
    return-void
.end method

.method public setStoreProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeProductId"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nativex/common/billingtracking/BillingInputs;->storeProductId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setStoreTransactionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeTransactionId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/nativex/common/billingtracking/BillingInputs;->storeTransactionId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setStoreTransactionTimeUTC(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeTransactionTimeUTC"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/nativex/common/billingtracking/BillingInputs;->storeTransactionTimeUTC:Ljava/lang/String;

    .line 117
    return-void
.end method
