.class public Lcom/redbox/android/model/Cart;
.super Ljava/lang/Object;
.source "Cart.java"


# instance fields
.field address:Ljava/lang/String;

.field city:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field jsonObject:Lorg/json/JSONObject;

.field numberOfCredits:I

.field price:Ljava/lang/String;

.field reservationPeriod:Ljava/lang/String;

.field state:Ljava/lang/String;

.field tax:Ljava/lang/String;

.field total:Ljava/lang/String;

.field vendor:Ljava/lang/String;

.field zip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    iput-object p1, p0, Lcom/redbox/android/model/Cart;->jsonObject:Lorg/json/JSONObject;

    .line 25
    const-string v2, "DiscountedSubTotal"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->price:Ljava/lang/String;

    .line 26
    const-string v2, "Tax"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->tax:Ljava/lang/String;

    .line 27
    const-string v2, "GrandTotal"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->total:Ljava/lang/String;

    .line 28
    const-string v2, "PickupBy"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->reservationPeriod:Ljava/lang/String;

    .line 29
    const-string v2, "NumberOfCredits"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/redbox/android/model/Cart;->numberOfCredits:I

    .line 31
    const-string v2, "Kiosk"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 32
    .local v1, "kiosk":Lorg/json/JSONObject;
    const-string v2, "Vendor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->vendor:Ljava/lang/String;

    .line 33
    const-string v2, "Address"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->address:Ljava/lang/String;

    .line 34
    const-string v2, "City"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->city:Ljava/lang/String;

    .line 35
    const-string v2, "State"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->state:Ljava/lang/String;

    .line 36
    const-string v2, "Zip"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->zip:Ljava/lang/String;

    .line 37
    const-string v2, "AddressDisplayName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->displayName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "kiosk":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 42
    const-string v2, "Exception while creating Card from json"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const-string v2, ""

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->price:Ljava/lang/String;

    .line 44
    const-string v2, ""

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->tax:Ljava/lang/String;

    .line 45
    const-string v2, ""

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->total:Ljava/lang/String;

    .line 46
    const-string v2, ""

    iput-object v2, p0, Lcom/redbox/android/model/Cart;->reservationPeriod:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/redbox/android/model/Cart;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/redbox/android/model/Cart;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/redbox/android/model/Cart;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMachineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/redbox/android/model/Cart;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfCredits()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/redbox/android/model/Cart;->numberOfCredits:I

    return v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/redbox/android/model/Cart;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getReservationPeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/redbox/android/model/Cart;->reservationPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/redbox/android/model/Cart;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/redbox/android/model/Cart;->tax:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/redbox/android/model/Cart;->total:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/redbox/android/model/Cart;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/redbox/android/model/Cart;->zip:Ljava/lang/String;

    return-object v0
.end method
