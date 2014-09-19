.class public Lv2/com/playhaven/interstitial/jsbridge/handlers/DismissHandler;
.super Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;
.source "DismissHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "jsonPayload"

    .prologue
    .line 17
    if-eqz p1, :cond_0

    const-string v1, "ping"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 24
    .local v0, closePingUrl:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/DismissHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v1, v0, p0}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->openURL(Ljava/lang/String;Lv2/com/playhaven/utils/PHURLOpener$Listener;)V

    .line 28
    return-void

    .line 17
    .end local v0           #closePingUrl:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method
