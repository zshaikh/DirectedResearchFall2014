.class public Lcom/redbox/android/model/MovieDetail;
.super Ljava/lang/Object;
.source "MovieDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4c94988db899612fL


# instance fields
.field private actors:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private formatId:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field private id:I

.field private img:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rating:Ljava/lang/String;

.field private runningTime:Ljava/lang/String;

.field private yahooRating:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    :try_start_0
    const-string v1, "ID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/redbox/android/model/MovieDetail;->id:I

    .line 22
    const-string v1, "Name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->name:Ljava/lang/String;

    .line 23
    const-string v1, "FormatID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->formatId:Ljava/lang/String;

    .line 24
    const-string v1, "Img"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->img:Ljava/lang/String;

    .line 25
    const-string v1, "Genre"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->genre:Ljava/lang/String;

    .line 26
    const-string v1, "Actors"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->actors:Ljava/lang/String;

    .line 27
    const-string v1, "Desc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->desc:Ljava/lang/String;

    .line 28
    const-string v1, "RunningTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->runningTime:Ljava/lang/String;

    .line 29
    const-string v1, "Rating"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->rating:Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/redbox/android/model/MovieDetail;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :Name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/redbox/android/model/MovieDetail;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nGenre :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/redbox/android/model/MovieDetail;->genre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nActors:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/redbox/android/model/MovieDetail;->actors:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDesc :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/redbox/android/model/MovieDetail;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33
    const-string v2, "\n Rating :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/redbox/android/model/MovieDetail;->rating:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Running time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/redbox/android/model/MovieDetail;->runningTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 36
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 37
    const-string v1, "Exception while creating MovieDetail from json"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->name:Ljava/lang/String;

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->img:Ljava/lang/String;

    .line 40
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->genre:Ljava/lang/String;

    .line 41
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->actors:Ljava/lang/String;

    .line 42
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->formatId:Ljava/lang/String;

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lcom/redbox/android/model/MovieDetail;->desc:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getActors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/redbox/android/model/MovieDetail;->actors:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/redbox/android/model/MovieDetail;->desc:Ljava/lang/String;

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/redbox/android/model/MovieDetail;->formatId:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/redbox/android/model/MovieDetail;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/redbox/android/model/MovieDetail;->id:I

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/redbox/android/model/MovieDetail;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/redbox/android/model/MovieDetail;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/redbox/android/model/MovieDetail;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public getRunningTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/redbox/android/model/MovieDetail;->runningTime:Ljava/lang/String;

    return-object v0
.end method

.method public getYahooRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/redbox/android/model/MovieDetail;->yahooRating:Ljava/lang/String;

    return-object v0
.end method

.method public isBluRay()Z
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/redbox/android/model/MovieDetail;->getFormatId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMRated()Z
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/redbox/android/model/MovieDetail;->getRating()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRRated()Z
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/redbox/android/model/MovieDetail;->getRating()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
