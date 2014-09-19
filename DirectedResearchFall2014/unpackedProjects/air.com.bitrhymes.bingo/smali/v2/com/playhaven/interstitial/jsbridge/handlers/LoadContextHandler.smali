.class public Lv2/com/playhaven/interstitial/jsbridge/handlers/LoadContextHandler;
.super Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;
.source "LoadContextHandler.java"


# static fields
.field private static final SET_PROTOCOL_JAVASCRIPT:Ljava/lang/String; = "window.PlayHavenDispatchProtocolVersion = %d"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "jsonObject"

    .prologue
    .line 22
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    .line 25
    .local v0, config:Lv2/com/playhaven/configuration/PHConfiguration;
    const-string v3, "window.PlayHavenDispatchProtocolVersion = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration;->getJSBridgeProtocolVersion()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, javascriptCommand:Ljava/lang/String;
    iget-object v3, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/LoadContextHandler;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    invoke-virtual {v3, v2}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->runJavascript(Ljava/lang/String;)V

    .line 36
    iget-object v3, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/LoadContextHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v3}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->getContent()Lv2/com/playhaven/model/PHContent;

    move-result-object v3

    iget-object v1, v3, Lv2/com/playhaven/model/PHContent;->context:Lorg/json/JSONObject;

    .line 38
    .local v1, downloadedContent:Lorg/json/JSONObject;
    iget-object v3, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/LoadContextHandler;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v4, "callback"

    invoke-virtual {v3, v4}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v4}, Lv2/com/playhaven/interstitial/jsbridge/handlers/LoadContextHandler;->sendResponseToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 41
    return-void
.end method
