.class public Lcom/redbox/android/model/Kiosk;
.super Ljava/lang/Object;
.source "Kiosk.java"


# instance fields
.field private address:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private dist:Ljava/lang/String;

.field private drv:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private ind:Ljava/lang/String;

.field private isFav:I

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private machineName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "jsonKiosk":Lorg/json/JSONObject;
    const-string v2, "ID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Kiosk;->id:Ljava/lang/String;

    .line 42
    const-string v2, "Vdr"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Kiosk;->name:Ljava/lang/String;

    .line 43
    const-string v2, "Lat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Kiosk;->latitude:Ljava/lang/String;

    .line 44
    const-string v2, "Lng"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Kiosk;->longitude:Ljava/lang/String;

    .line 45
    const-string v2, "Addr"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Kiosk;->address:Ljava/lang/String;

    .line 46
    const-string v2, "St"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Kiosk;->state:Ljava/lang/String;

    .line 47
    const-string v2, "City"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Kiosk;->city:Ljava/lang/String;

    .line 48
    const-string v2, "Drv"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Kiosk;->drv:Ljava/lang/String;

    .line 49
    const-string v2, "Ind"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Kiosk;->ind:Ljava/lang/String;

    .line 50
    const-string v2, "Zip"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Kiosk;->zip:Ljava/lang/String;

    .line 51
    const-string v2, "Dist"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Kiosk;->dist:Ljava/lang/String;

    .line 52
    const-string v2, "Name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/model/Kiosk;->machineName:Ljava/lang/String;

    .line 53
    const/4 v2, 0x0

    iput v2, p0, Lcom/redbox/android/model/Kiosk;->isFav:I

    .line 54
    const-string v2, "Created Kiosk Object"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "jsonKiosk":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 56
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 57
    const-string v2, "Error parsing JSON"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "latitude"    # Ljava/lang/String;
    .param p4, "longitude"    # Ljava/lang/String;
    .param p5, "address"    # Ljava/lang/String;
    .param p6, "state"    # Ljava/lang/String;
    .param p7, "city"    # Ljava/lang/String;
    .param p8, "drv"    # Ljava/lang/String;
    .param p9, "ind"    # Ljava/lang/String;
    .param p10, "zip"    # Ljava/lang/String;
    .param p11, "dist"    # Ljava/lang/String;
    .param p12, "fav"    # I
    .param p13, "machineName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/redbox/android/model/Kiosk;->id:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/redbox/android/model/Kiosk;->name:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/redbox/android/model/Kiosk;->latitude:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/redbox/android/model/Kiosk;->longitude:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/redbox/android/model/Kiosk;->address:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/redbox/android/model/Kiosk;->state:Ljava/lang/String;

    .line 28
    iput-object p7, p0, Lcom/redbox/android/model/Kiosk;->city:Ljava/lang/String;

    .line 29
    iput-object p8, p0, Lcom/redbox/android/model/Kiosk;->drv:Ljava/lang/String;

    .line 30
    iput-object p9, p0, Lcom/redbox/android/model/Kiosk;->ind:Ljava/lang/String;

    .line 31
    iput-object p10, p0, Lcom/redbox/android/model/Kiosk;->zip:Ljava/lang/String;

    .line 32
    iput-object p11, p0, Lcom/redbox/android/model/Kiosk;->dist:Ljava/lang/String;

    .line 33
    iput p12, p0, Lcom/redbox/android/model/Kiosk;->isFav:I

    .line 34
    iput-object p13, p0, Lcom/redbox/android/model/Kiosk;->machineName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/redbox/android/model/Kiosk;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/redbox/android/model/Kiosk;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/redbox/android/model/Kiosk;->dist:Ljava/lang/String;

    return-object v0
.end method

.method public getDrv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/redbox/android/model/Kiosk;->drv:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/redbox/android/model/Kiosk;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/redbox/android/model/Kiosk;->ind:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/redbox/android/model/Kiosk;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/redbox/android/model/Kiosk;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMachineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/redbox/android/model/Kiosk;->machineName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/redbox/android/model/Kiosk;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/redbox/android/model/Kiosk;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/redbox/android/model/Kiosk;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public isFav()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/redbox/android/model/Kiosk;->isFav:I

    return v0
.end method

.method public setFav()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/redbox/android/model/Kiosk;->isFav:I

    .line 109
    return-void
.end method

.method public unsetFav()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/redbox/android/model/Kiosk;->isFav:I

    .line 113
    return-void
.end method
