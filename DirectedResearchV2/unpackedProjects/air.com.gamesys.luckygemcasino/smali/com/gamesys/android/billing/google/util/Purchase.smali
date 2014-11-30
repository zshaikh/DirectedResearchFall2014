.class public Lcom/gamesys/android/billing/google/util/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# instance fields
.field mDeveloperPayload:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "jsonPurchaseInfo"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mItemType:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "o":Lorg/json/JSONObject;
    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mOrderId:Ljava/lang/String;

    .line 49
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mPackageName:Ljava/lang/String;

    .line 50
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mSku:Ljava/lang/String;

    .line 51
    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mPurchaseTime:J

    .line 52
    const-string v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mPurchaseState:I

    .line 53
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 54
    const-string v1, "token"

    const-string v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mToken:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mSignature:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mPurchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public setDeveloperPayload(Ljava/lang/String;)V
    .locals 0
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseInfo(type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
