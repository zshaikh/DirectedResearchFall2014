.class public Lv2/com/playhaven/interstitial/jsbridge/handlers/CloseButtonHandler;
.super Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;
.source "CloseButtonHandler.java"


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
    .locals 6
    .parameter "jsonPayload"

    .prologue
    const-string v4, "hidden"

    .line 17
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 19
    :cond_0
    :try_start_0
    const-string v4, "hidden"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, shouldHide:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebView asks us to hide close button: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 24
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 26
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 28
    .local v2, shouldDisableClosable:Z
    if-eqz v2, :cond_2

    .line 29
    iget-object v4, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/CloseButtonHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v4}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->disableClosable()V

    .line 34
    .end local v2           #shouldDisableClosable:Z
    :cond_1
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v1, response:Lorg/json/JSONObject;
    const-string v5, "hidden"

    iget-object v4, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/CloseButtonHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v4}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->isClosable()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "false"

    :goto_2
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    iget-object v4, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/CloseButtonHandler;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v5, "callback"

    invoke-virtual {v4, v5}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v5}, Lv2/com/playhaven/interstitial/jsbridge/handlers/CloseButtonHandler;->sendResponseToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v1           #response:Lorg/json/JSONObject;
    .end local v3           #shouldHide:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 44
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PHInterstitialActivity - handleCloseButton"

    sget-object v5, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v4, v5}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0

    .line 31
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #shouldDisableClosable:Z
    .restart local v3       #shouldHide:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/CloseButtonHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v4}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->enableClosable()V

    goto :goto_1

    .line 38
    .end local v2           #shouldDisableClosable:Z
    .restart local v1       #response:Lorg/json/JSONObject;
    :cond_3
    const-string v4, "true"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
