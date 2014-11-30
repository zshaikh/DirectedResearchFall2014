.class public Lcom/redbox/android/http/MobileInitCallHandler;
.super Ljava/lang/Object;
.source "MobileInitCallHandler.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# instance fields
.field private aborted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/http/MobileInitCallHandler;->aborted:Z

    .line 15
    return-void
.end method


# virtual methods
.method public callFailed()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "MobileInitCallFailed"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public callFinished()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public connectionAborted()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "Connection aborted"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/http/MobileInitCallHandler;->aborted:Z

    .line 71
    return-void
.end method

.method public connectionError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 51
    const-string v0, "Connection Error--"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-boolean v0, p0, Lcom/redbox/android/http/MobileInitCallHandler;->aborted:Z

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/redbox/android/http/MobileInitCallHandler;->callFailed()V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 28
    iget-boolean v4, p0, Lcom/redbox/android/http/MobileInitCallHandler;->aborted:Z

    if-eqz v4, :cond_0

    .line 47
    :goto_0
    return-void

    .line 32
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 33
    .local v3, "jsonResponse":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "j":Lorg/json/JSONObject;
    const-string v4, "d"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 35
    .local v2, "j1":Lorg/json/JSONObject;
    const-string v4, "key"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Data Recvd for movie detail. key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/redbox/android/http/MobileInitCallHandler;->callFinished()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 40
    .end local v1    # "j":Lorg/json/JSONObject;
    .end local v2    # "j1":Lorg/json/JSONObject;
    .end local v3    # "jsonResponse":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 41
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "error converting json byte to string"

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "Error parsing json"

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public status(II)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/redbox/android/http/MobileInitCallHandler;->aborted:Z

    if-eqz v0, :cond_0

    .line 24
    :cond_0
    return-void
.end method
