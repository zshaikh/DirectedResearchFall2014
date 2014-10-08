.class public Lv2/com/playhaven/requests/content/PHSubContentRequest;
.super Lv2/com/playhaven/requests/base/PHAPIRequest;
.source "PHSubContentRequest.java"


# instance fields
.field private listener:Lv2/com/playhaven/listeners/PHSubContentRequestListener;

.field private webviewCallback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lv2/com/playhaven/listeners/PHSubContentRequestListener;)V
    .locals 0
    .param p1, "listener"    # Lv2/com/playhaven/listeners/PHSubContentRequestListener;

    .prologue
    .line 33
    invoke-direct {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;-><init>()V

    .line 35
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHSubContentRequest;->listener:Lv2/com/playhaven/listeners/PHSubContentRequestListener;

    .line 36
    return-void
.end method


# virtual methods
.method public getSubContentListener()Lv2/com/playhaven/listeners/PHSubContentRequestListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHSubContentRequest;->listener:Lv2/com/playhaven/listeners/PHSubContentRequestListener;

    return-object v0
.end method

.method public getURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHSubContentRequest;->fullUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/content/PHSubContentRequest;->baseURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv2/com/playhaven/requests/content/PHSubContentRequest;->fullUrl:Ljava/lang/String;

    .line 93
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHSubContentRequest;->fullUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebviewCallback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHSubContentRequest;->webviewCallback:Ljava/lang/String;

    return-object v0
.end method

.method public handleRequestFailure(Lv2/com/playhaven/model/PHError;)V
    .locals 1
    .param p1, "error"    # Lv2/com/playhaven/model/PHError;

    .prologue
    .line 81
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHSubContentRequest;->listener:Lv2/com/playhaven/listeners/PHSubContentRequestListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHSubContentRequest;->listener:Lv2/com/playhaven/listeners/PHSubContentRequestListener;

    invoke-interface {v0, p0, p1}, Lv2/com/playhaven/listeners/PHSubContentRequestListener;->onSubContentRequestFailed(Lv2/com/playhaven/requests/content/PHSubContentRequest;Lv2/com/playhaven/model/PHError;)V

    .line 83
    :cond_0
    return-void
.end method

.method public handleRequestSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 75
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHSubContentRequest;->listener:Lv2/com/playhaven/listeners/PHSubContentRequestListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lv2/com/playhaven/requests/content/PHSubContentRequest;->listener:Lv2/com/playhaven/listeners/PHSubContentRequestListener;

    invoke-interface {v0, p0, p1}, Lv2/com/playhaven/listeners/PHSubContentRequestListener;->onSubContentRequestSucceeded(Lv2/com/playhaven/requests/content/PHSubContentRequest;Lorg/json/JSONObject;)V

    .line 77
    :cond_0
    return-void
.end method

.method public send(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/content/PHSubContentRequest;->baseURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/content/PHSubContentRequest;->baseURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    invoke-super {p0, p1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->send(Landroid/content/Context;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v0, "No URL set for PHSubContentRequest"

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSubContentReuqestListener(Lv2/com/playhaven/listeners/PHSubContentRequestListener;)V
    .locals 0
    .param p1, "listener"    # Lv2/com/playhaven/listeners/PHSubContentRequestListener;

    .prologue
    .line 43
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHSubContentRequest;->listener:Lv2/com/playhaven/listeners/PHSubContentRequestListener;

    .line 44
    return-void
.end method

.method public setWebviewCallback(Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lv2/com/playhaven/requests/content/PHSubContentRequest;->webviewCallback:Ljava/lang/String;

    .line 60
    return-void
.end method
