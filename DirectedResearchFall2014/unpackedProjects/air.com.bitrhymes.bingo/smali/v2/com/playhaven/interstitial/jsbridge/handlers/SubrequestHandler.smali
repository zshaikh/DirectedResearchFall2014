.class public Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;
.super Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;
.source "SubrequestHandler.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHSubContentRequestListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;-><init>()V

    return-void
.end method

.method private notifyRequesterOfError(Lv2/com/playhaven/interstitial/PHContentEnums$Error;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 57
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v2, message:Landroid/os/Bundle;
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->Error:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v3}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, error_key:Ljava/lang/String;
    invoke-virtual {p1}, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->Failed:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    invoke-virtual {v3}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, event:Ljava/lang/String;
    iget-object v3, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {p0, v1, v2}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->sendEventToRequester(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method private notifyRequesterOfStarting()V
    .locals 3

    .prologue
    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v1, message:Landroid/os/Bundle;
    sget-object v2, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->SentSubrequest:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    invoke-virtual {v2}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, event:Ljava/lang/String;
    iget-object v2, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {p0, v0, v1}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->sendEventToRequester(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 49
    return-void
.end method


# virtual methods
.method public handle(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "jsonPayload"

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance v0, Lv2/com/playhaven/requests/content/PHSubContentRequest;

    invoke-direct {v0, p0}, Lv2/com/playhaven/requests/content/PHSubContentRequest;-><init>(Lv2/com/playhaven/listeners/PHSubContentRequestListener;)V

    .line 29
    .local v0, request:Lv2/com/playhaven/requests/content/PHSubContentRequest;
    const-string v1, "url"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv2/com/playhaven/requests/content/PHSubContentRequest;->setBaseURL(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v2, "callback"

    invoke-virtual {v1, v2}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv2/com/playhaven/requests/content/PHSubContentRequest;->setWebviewCallback(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v1, v0}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->launchSubRequest(Lv2/com/playhaven/requests/content/PHSubContentRequest;)V

    .line 36
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;->notifyRequesterOfStarting()V

    goto :goto_0
.end method

.method public onSubContentRequestFailed(Lv2/com/playhaven/requests/content/PHSubContentRequest;Lv2/com/playhaven/model/PHError;)V
    .locals 7
    .parameter "request"
    .parameter "e"

    .prologue
    const-string v6, "PHInterstitialActivity - requestFailed(request, responseData)"

    .line 112
    if-nez p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 114
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 115
    .local v0, error:Lorg/json/JSONObject;
    const-string v4, "error"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    move-object v3, p1

    .line 119
    .local v3, sub_request:Lv2/com/playhaven/requests/content/PHSubContentRequest;
    invoke-virtual {v3}, Lv2/com/playhaven/requests/content/PHSubContentRequest;->getWebviewCallback()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;->sendResponseToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 122
    sget-object v4, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->FailedSubrequest:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    invoke-direct {p0, v4}, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;->notifyRequesterOfError(Lv2/com/playhaven/interstitial/PHContentEnums$Error;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 124
    .end local v0           #error:Lorg/json/JSONObject;
    .end local v3           #sub_request:Lv2/com/playhaven/requests/content/PHSubContentRequest;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 125
    .local v1, ex:Lorg/json/JSONException;
    const-string v4, "PHInterstitialActivity - requestFailed(request, responseData)"

    sget-object v4, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->low:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v1, v6, v4}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0

    .line 126
    .end local v1           #ex:Lorg/json/JSONException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 127
    .local v2, exc:Ljava/lang/Exception;
    const-string v4, "PHInterstitialActivity - requestFailed(request, responseData)"

    sget-object v4, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v2, v6, v4}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method public onSubContentRequestSucceeded(Lv2/com/playhaven/requests/content/PHSubContentRequest;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "request"
    .parameter "responseData"

    .prologue
    .line 71
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 107
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    new-instance v0, Lv2/com/playhaven/model/PHContent;

    invoke-direct {v0, p2}, Lv2/com/playhaven/model/PHContent;-><init>(Lorg/json/JSONObject;)V

    .line 77
    .local v0, content:Lv2/com/playhaven/model/PHContent;
    iget-object v3, v0, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 81
    iget-object v3, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v3, v0}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->launchNestedContentDisplayer(Lv2/com/playhaven/model/PHContent;)V

    .line 88
    invoke-virtual {p1}, Lv2/com/playhaven/requests/content/PHSubContentRequest;->getWebviewCallback()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p2, v4}, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;->sendResponseToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v0           #content:Lv2/com/playhaven/model/PHContent;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 105
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PHInterstitialActivity - requestSucceeded(request, responseData)"

    sget-object v4, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v1, v3, v4}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0

    .line 91
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #content:Lv2/com/playhaven/model/PHContent;
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v2, error_dict:Lorg/json/JSONObject;
    const-string v3, "error"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {p1}, Lv2/com/playhaven/requests/content/PHSubContentRequest;->getWebviewCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2, v2}, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;->sendResponseToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 97
    sget-object v3, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->FailedSubrequest:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    invoke-direct {p0, v3}, Lv2/com/playhaven/interstitial/jsbridge/handlers/SubrequestHandler;->notifyRequesterOfError(Lv2/com/playhaven/interstitial/PHContentEnums$Error;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 100
    .end local v2           #error_dict:Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 101
    .local v1, e:Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
