.class public Lcom/gamesys/android/billing/google/util/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# instance fields
.field mDescription:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mJson:Ljava/lang/String;

.field mPrice:Ljava/lang/String;

.field mPriceCurrency:Ljava/lang/String;

.field mPriceMicros:J

.field mSku:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonSkuDetails"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "inapp"

    invoke-direct {p0, v0, p1}, Lcom/gamesys/android/billing/google/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "jsonSkuDetails"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mItemType:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mJson:Ljava/lang/String;

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "o":Lorg/json/JSONObject;
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mSku:Ljava/lang/String;

    .line 51
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mType:Ljava/lang/String;

    .line 52
    const-string v1, "price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mPrice:Ljava/lang/String;

    .line 53
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mTitle:Ljava/lang/String;

    .line 54
    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mDescription:Ljava/lang/String;

    .line 55
    const-string v1, "price_amount_micros"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mPriceMicros:J

    .line 56
    const-string v1, "price_currency_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mPriceCurrency:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getJSONStream()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mPriceCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceMicros()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mPriceMicros:J

    return-wide v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SkuDetails:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/SkuDetails;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
