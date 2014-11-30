.class public Lcom/redbox/android/model/Card;
.super Ljava/lang/Object;
.source "Card.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x29b99766eefad039L


# instance fields
.field alias:Ljava/lang/String;

.field cardNo4:Ljava/lang/String;

.field cardNumber:Ljava/lang/String;

.field cardType:Ljava/lang/String;

.field cvv:Ljava/lang/String;

.field expMonth:Ljava/lang/String;

.field expYear:Ljava/lang/String;

.field id:J

.field isPreferred:Z

.field jsonString:Ljava/lang/String;

.field name:Ljava/lang/String;

.field storeCard:Z

.field zip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/Card;->jsonString:Ljava/lang/String;

    .line 28
    const-string v1, "ID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/redbox/android/model/Card;->id:J

    .line 29
    const-string v1, "CardType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/Card;->cardType:Ljava/lang/String;

    .line 30
    const-string v1, "CardNumber"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/Card;->cardNumber:Ljava/lang/String;

    .line 31
    const-string v1, "CardNo4"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/Card;->cardNo4:Ljava/lang/String;

    .line 32
    const-string v1, "ExpMonth"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/Card;->expMonth:Ljava/lang/String;

    .line 33
    const-string v1, "ExpYear"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/Card;->expYear:Ljava/lang/String;

    .line 34
    const-string v1, "Name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/Card;->name:Ljava/lang/String;

    .line 35
    const-string v1, "Zip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/Card;->zip:Ljava/lang/String;

    .line 36
    const-string v1, "CVV"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/Card;->cvv:Ljava/lang/String;

    .line 37
    const-string v1, "Alias"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/Card;->alias:Ljava/lang/String;

    .line 38
    const-string v1, "IsPreferred"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/redbox/android/model/Card;->isPreferred:Z

    .line 39
    const-string v1, "StoreCard"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/redbox/android/model/Card;->storeCard:Z

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ID :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/redbox/android/model/Card;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ncardType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/redbox/android/model/Card;->cardType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nisPreferred:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/redbox/android/model/Card;->isPreferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ncardNumber :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/redbox/android/model/Card;->cardNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 43
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 44
    const-string v1, "Exception while creating Card from json"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/redbox/android/model/Card;->id:J

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/Card;->cardType:Ljava/lang/String;

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/Card;->cardNumber:Ljava/lang/String;

    .line 48
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/Card;->cardNo4:Ljava/lang/String;

    .line 49
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/Card;->expMonth:Ljava/lang/String;

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/Card;->expYear:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/Card;->name:Ljava/lang/String;

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/Card;->zip:Ljava/lang/String;

    .line 53
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/Card;->cvv:Ljava/lang/String;

    .line 54
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/Card;->alias:Ljava/lang/String;

    .line 55
    iput-boolean v4, p0, Lcom/redbox/android/model/Card;->isPreferred:Z

    .line 56
    iput-boolean v4, p0, Lcom/redbox/android/model/Card;->storeCard:Z

    goto :goto_0
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/redbox/android/model/Card;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNo4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/redbox/android/model/Card;->cardNo4:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/redbox/android/model/Card;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/redbox/android/model/Card;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getCvv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/redbox/android/model/Card;->cvv:Ljava/lang/String;

    return-object v0
.end method

.method public getExpMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/redbox/android/model/Card;->expMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getExpYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/redbox/android/model/Card;->expYear:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/redbox/android/model/Card;->id:J

    return-wide v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 62
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/redbox/android/model/Card;->jsonString:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "CVV"

    invoke-virtual {p0}, Lcom/redbox/android/model/Card;->getCvv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 71
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 66
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 68
    const-string v2, "Error converting card string to json object"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/redbox/android/model/Card;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/redbox/android/model/Card;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public isPreferred()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/redbox/android/model/Card;->isPreferred:Z

    return v0
.end method

.method public isStoreCard()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/redbox/android/model/Card;->storeCard:Z

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/redbox/android/model/Card;->alias:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setCardNo4(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNo4"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/redbox/android/model/Card;->cardNo4:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/redbox/android/model/Card;->cardNumber:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardType"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/redbox/android/model/Card;->cardType:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setCvv(Ljava/lang/String;)V
    .locals 0
    .param p1, "cvv"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/redbox/android/model/Card;->cvv:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setExpMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "expMonth"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/redbox/android/model/Card;->expMonth:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setExpYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "expYear"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/redbox/android/model/Card;->expYear:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/redbox/android/model/Card;->id:J

    .line 89
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/redbox/android/model/Card;->name:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setPreferred(Z)V
    .locals 0
    .param p1, "isPreferred"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/redbox/android/model/Card;->isPreferred:Z

    .line 169
    return-void
.end method

.method public setStoreCard(Z)V
    .locals 0
    .param p1, "storeCard"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/redbox/android/model/Card;->storeCard:Z

    .line 177
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0
    .param p1, "zip"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/redbox/android/model/Card;->zip:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 76
    iget-object v0, p0, Lcom/redbox/android/model/Card;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/redbox/android/model/Card;->alias:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/redbox/android/model/Card;->alias:Ljava/lang/String;

    iget-object v2, p0, Lcom/redbox/android/model/Card;->alias:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/redbox/android/model/Card;->alias:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/redbox/android/model/Card;->alias:Ljava/lang/String;

    goto :goto_0
.end method
