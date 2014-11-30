.class public Lcom/redbox/android/model/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# instance fields
.field cst:Ljava/lang/String;

.field def:Ljava/lang/String;

.field formatId:Ljava/lang/String;

.field genreIds:Ljava/lang/String;

.field id:I

.field img:Ljava/lang/String;

.field isGame:Z

.field limited:Ljava/lang/String;

.field name:Ljava/lang/String;

.field productType:Ljava/lang/String;

.field release:Ljava/lang/String;

.field sortName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    const-string v5, "Cst"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setCst(Ljava/lang/String;)V

    .line 43
    const-string v5, "ID"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setId(I)V

    .line 44
    const-string v5, "Name"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setName(Ljava/lang/String;)V

    .line 45
    const-string v5, "SortName"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setSortName(Ljava/lang/String;)V

    .line 46
    const-string v5, "Img"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setImg(Ljava/lang/String;)V

    .line 47
    const-string v5, "Release"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setRelease(Ljava/lang/String;)V

    .line 48
    const-string v5, "GenreIDs"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 50
    .local v4, "tmp":Lorg/json/JSONArray;
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setGame(Z)V

    .line 53
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, ","

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setGenreIds(Ljava/lang/String;)V

    .line 63
    const-string v5, "FormatID"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setFormatId(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/redbox/android/model/Movie;->getFormatId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/redbox/android/model/Movie;->getFormatId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    .line 65
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setGame(Z)V

    .line 67
    :cond_0
    const-string v5, "ProductType"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setProductType(Ljava/lang/String;)V

    .line 68
    const-string v5, "Def"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setDef(Ljava/lang/String;)V

    .line 69
    const-string v5, "Limited"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/redbox/android/model/Movie;->setLimited(Ljava/lang/String;)V

    .line 74
    return-void

    .line 55
    :cond_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "g":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "g":Ljava/lang/String;
    .end local v2    # "j":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "tmp":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception while creating movie object: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    throw v0
.end method


# virtual methods
.method public getCst()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/redbox/android/model/Movie;->cst:Ljava/lang/String;

    return-object v0
.end method

.method public getDef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/redbox/android/model/Movie;->def:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/redbox/android/model/Movie;->formatId:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/redbox/android/model/Movie;->genreIds:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/redbox/android/model/Movie;->id:I

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/redbox/android/model/Movie;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getLimited()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/redbox/android/model/Movie;->limited:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/redbox/android/model/Movie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/redbox/android/model/Movie;->productType:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/redbox/android/model/Movie;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getSortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/redbox/android/model/Movie;->sortName:Ljava/lang/String;

    return-object v0
.end method

.method public isGame()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/redbox/android/model/Movie;->isGame:Z

    return v0
.end method

.method public isGameID(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 90
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x402
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCst(Ljava/lang/String;)V
    .locals 0
    .param p1, "cst"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/redbox/android/model/Movie;->cst:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setDef(Ljava/lang/String;)V
    .locals 0
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/redbox/android/model/Movie;->def:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setFormatId(Ljava/lang/String;)V
    .locals 0
    .param p1, "formatId"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/redbox/android/model/Movie;->formatId:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setGame(Z)V
    .locals 0
    .param p1, "isGame"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/redbox/android/model/Movie;->isGame:Z

    .line 116
    return-void
.end method

.method public setGenreIds(Ljava/lang/String;)V
    .locals 0
    .param p1, "genreIds"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/redbox/android/model/Movie;->genreIds:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/redbox/android/model/Movie;->id:I

    .line 202
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 3
    .param p1, "img"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/model/Movie;->img:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/redbox/android/model/Movie;->img:Ljava/lang/String;

    const-string v1, "%252C"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/model/Movie;->img:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/redbox/android/model/Movie;->img:Ljava/lang/String;

    const-string v1, "%2527"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/model/Movie;->img:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setLimited(Ljava/lang/String;)V
    .locals 0
    .param p1, "limited"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/redbox/android/model/Movie;->limited:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/redbox/android/model/Movie;->name:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setProductType(Ljava/lang/String;)V
    .locals 0
    .param p1, "productType"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/redbox/android/model/Movie;->productType:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0
    .param p1, "release"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/redbox/android/model/Movie;->release:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setSortName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortName"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/redbox/android/model/Movie;->sortName:Ljava/lang/String;

    .line 140
    return-void
.end method
