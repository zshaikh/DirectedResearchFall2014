.class public abstract Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;
.super Ljava/lang/Object;
.source "AbstractHandler.java"


# instance fields
.field protected bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

.field protected contentDisplayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRequestContext()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 68
    :try_start_0
    iget-object v3, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v4, "context"

    invoke-virtual {v3, v4}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "contextStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "undefined"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v0, "context":Lorg/json/JSONObject;
    :goto_0
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 79
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_2

    move-object v3, v0

    .line 86
    .end local v0    # "context":Lorg/json/JSONObject;
    .end local v1    # "contextStr":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 75
    .restart local v1    # "contextStr":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "context":Lorg/json/JSONObject;
    goto :goto_0

    .line 82
    .end local v0    # "context":Lorg/json/JSONObject;
    .end local v1    # "contextStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 83
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 86
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public attachBridge(Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;)V
    .locals 0
    .param p1, "bridge"    # Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    .prologue
    .line 48
    iput-object p1, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    .line 49
    return-void
.end method

.method public attachContentDisplayer(Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;)V
    .locals 1
    .param p1, "contentDisplayer"    # Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    .line 54
    return-void
.end method

.method protected doesntHaveContentDisplayer()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final handle()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->doesntHaveContentDisplayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->getRequestContext()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->handle(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected abstract handle(Lorg/json/JSONObject;)V
.end method

.method protected sendResponseToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "payload"    # Lorg/json/JSONObject;
    .param p3, "error"    # Lorg/json/JSONObject;

    .prologue
    .line 97
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    invoke-virtual {v0, p1, p2, p3}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->sendMessageToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
