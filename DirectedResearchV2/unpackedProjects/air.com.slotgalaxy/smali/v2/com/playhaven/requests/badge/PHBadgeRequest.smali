.class public Lv2/com/playhaven/requests/badge/PHBadgeRequest;
.super Lv2/com/playhaven/requests/base/PHAPIRequest;
.source "PHBadgeRequest.java"


# instance fields
.field private listener:Lv2/com/playhaven/listeners/PHBadgeRequestListener;

.field public placement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "placement"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->placement:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->placement:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Lv2/com/playhaven/listeners/PHBadgeRequestListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Lv2/com/playhaven/listeners/PHBadgeRequestListener;
    .param p2, "placement"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p2}, Lv2/com/playhaven/requests/badge/PHBadgeRequest;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->setMetadataListener(Lv2/com/playhaven/listeners/PHBadgeRequestListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public baseURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-string v0, "/v3/publisher/content/"

    invoke-super {p0, p1, v0}, Lv2/com/playhaven/requests/base/PHAPIRequest;->createAPIURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalParams(Landroid/content/Context;)Ljava/util/Hashtable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 79
    .local v0, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->placement:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "placement_id"

    iget-object v2, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->placement:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    const-string v1, "metadata"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v0
.end method

.method public getListener()Lv2/com/playhaven/listeners/PHBadgeRequestListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->listener:Lv2/com/playhaven/listeners/PHBadgeRequestListener;

    return-object v0
.end method

.method public getMetadataListener()Lv2/com/playhaven/listeners/PHBadgeRequestListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->listener:Lv2/com/playhaven/listeners/PHBadgeRequestListener;

    return-object v0
.end method

.method public handleRequestFailure(Lv2/com/playhaven/model/PHError;)V
    .locals 1
    .param p1, "error"    # Lv2/com/playhaven/model/PHError;

    .prologue
    .line 67
    iget-object v0, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->listener:Lv2/com/playhaven/listeners/PHBadgeRequestListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->listener:Lv2/com/playhaven/listeners/PHBadgeRequestListener;

    invoke-interface {v0, p0, p1}, Lv2/com/playhaven/listeners/PHBadgeRequestListener;->onBadgeRequestFailed(Lv2/com/playhaven/requests/badge/PHBadgeRequest;Lv2/com/playhaven/model/PHError;)V

    .line 69
    :cond_0
    return-void
.end method

.method public handleRequestSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->listener:Lv2/com/playhaven/listeners/PHBadgeRequestListener;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->listener:Lv2/com/playhaven/listeners/PHBadgeRequestListener;

    new-instance v1, Lv2/com/playhaven/model/PHError;

    sget-object v2, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->NoResponseField:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    invoke-virtual {v2}, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lv2/com/playhaven/model/PHError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lv2/com/playhaven/listeners/PHBadgeRequestListener;->onBadgeRequestFailed(Lv2/com/playhaven/requests/badge/PHBadgeRequest;Lv2/com/playhaven/model/PHError;)V

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    iget-object v0, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->listener:Lv2/com/playhaven/listeners/PHBadgeRequestListener;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->listener:Lv2/com/playhaven/listeners/PHBadgeRequestListener;

    invoke-interface {v0, p0, p1}, Lv2/com/playhaven/listeners/PHBadgeRequestListener;->onBadgeRequestSucceeded(Lv2/com/playhaven/requests/badge/PHBadgeRequest;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public setMetadataListener(Lv2/com/playhaven/listeners/PHBadgeRequestListener;)V
    .locals 0
    .param p1, "listener"    # Lv2/com/playhaven/listeners/PHBadgeRequestListener;

    .prologue
    .line 39
    iput-object p1, p0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->listener:Lv2/com/playhaven/listeners/PHBadgeRequestListener;

    .line 40
    return-void
.end method
