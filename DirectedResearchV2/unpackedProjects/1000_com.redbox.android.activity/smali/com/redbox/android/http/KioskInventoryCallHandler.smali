.class public Lcom/redbox/android/http/KioskInventoryCallHandler;
.super Ljava/lang/Object;
.source "KioskInventoryCallHandler.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# instance fields
.field private aborted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/http/KioskInventoryCallHandler;->aborted:Z

    .line 17
    return-void
.end method


# virtual methods
.method public callFailed(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 73
    return-void
.end method

.method public callFinished()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public connectionAborted()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/http/KioskInventoryCallHandler;->aborted:Z

    .line 79
    return-void
.end method

.method public connectionError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/redbox/android/http/KioskInventoryCallHandler;->aborted:Z

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/redbox/android/http/KioskInventoryCallHandler;->callFailed(I)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 30
    iget-boolean v5, p0, Lcom/redbox/android/http/KioskInventoryCallHandler;->aborted:Z

    if-eqz v5, :cond_0

    .line 57
    :goto_0
    return-void

    .line 35
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v1, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 41
    .local v1, "detail":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Inventory : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const-string v5, "d"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 44
    .local v0, "d":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v4, "kisok":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Inventory : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Inv"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v5

    const-string v6, "Inv"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/redbox/android/model/SelectedKioskManager;->updateInventory(Lorg/json/JSONArray;)V

    .line 49
    invoke-virtual {p0}, Lcom/redbox/android/http/KioskInventoryCallHandler;->callFinished()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 50
    .end local v0    # "d":Lorg/json/JSONArray;
    .end local v1    # "detail":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "kisok":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 52
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 53
    const-string v5, "Encoding Error Parsing Kiosk Inventory"

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 55
    .local v2, "e":Lorg/json/JSONException;
    const-string v5, "Error Parsing Kiosk Inventory"

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public status(II)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/redbox/android/http/KioskInventoryCallHandler;->aborted:Z

    if-eqz v0, :cond_0

    .line 26
    :cond_0
    return-void
.end method
