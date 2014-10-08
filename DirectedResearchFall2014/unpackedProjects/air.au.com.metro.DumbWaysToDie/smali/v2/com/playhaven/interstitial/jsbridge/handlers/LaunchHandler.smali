.class public Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;
.super Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;
.source "LaunchHandler.java"

# interfaces
.implements Lv2/com/playhaven/utils/PHURLOpener$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonPayload"    # Lorg/json/JSONObject;

    .prologue
    .line 21
    if-nez p1, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;->doesntHaveContentDisplayer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    const-string v1, "url"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->launchURL(Ljava/lang/String;Lv2/com/playhaven/utils/PHURLOpener$Listener;)V

    goto :goto_0
.end method

.method public onURLOpenerFailed(Lv2/com/playhaven/utils/PHURLOpener;)V
    .locals 9
    .param p1, "loader"    # Lv2/com/playhaven/utils/PHURLOpener;

    .prologue
    const-string v8, "PHInterstitialActivity - onURLOpenerFailed"

    .line 78
    invoke-virtual {p1}, Lv2/com/playhaven/utils/PHURLOpener;->getContentTemplateCallback()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 80
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v5, "response":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .local v1, "error":Lorg/json/JSONObject;
    const-string v6, "error"

    const-string v7, "1"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v6, "url"

    invoke-virtual {p1}, Lv2/com/playhaven/utils/PHURLOpener;->getTargetURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {p1}, Lv2/com/playhaven/utils/PHURLOpener;->getContentTemplateCallback()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v1}, Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;->sendResponseToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .end local v1    # "error":Lorg/json/JSONObject;
    .end local v5    # "response":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v4, "message":Landroid/os/Bundle;
    sget-object v6, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->Error:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v6}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "error_key":Ljava/lang/String;
    sget-object v6, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->CouldNotLoadURL:Lv2/com/playhaven/interstitial/PHContentEnums$Error;

    invoke-virtual {v6}, Lv2/com/playhaven/interstitial/PHContentEnums$Error;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v6, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->Failed:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    invoke-virtual {v6}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "event":Ljava/lang/String;
    iget-object v6, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;
    check-cast p0, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {p0, v3, v4}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->sendEventToRequester(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    return-void

    .line 87
    .end local v2    # "error_key":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "message":Landroid/os/Bundle;
    .restart local p0    # "this":Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 88
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "PHInterstitialActivity - onURLOpenerFailed"

    sget-object v6, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v8, v6}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0

    .line 89
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "PHInterstitialActivity - onURLOpenerFailed"

    sget-object v6, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v8, v6}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method public onURLOpenerFinished(Lv2/com/playhaven/utils/PHURLOpener;)V
    .locals 9
    .param p1, "loader"    # Lv2/com/playhaven/utils/PHURLOpener;

    .prologue
    const-string v8, "PHInterstitialActivity - onURLOpenerFinished"

    .line 31
    invoke-virtual {p1}, Lv2/com/playhaven/utils/PHURLOpener;->getContentTemplateCallback()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 33
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v5, "r":Lorg/json/JSONObject;
    const-string v6, "url"

    invoke-virtual {p1}, Lv2/com/playhaven/utils/PHURLOpener;->getTargetURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {p1}, Lv2/com/playhaven/utils/PHURLOpener;->getContentTemplateCallback()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v5, v7}, Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;->sendResponseToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 40
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v4, "message":Landroid/os/Bundle;
    sget-object v6, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->LaunchURL:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v6}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "launch_url_key":Ljava/lang/String;
    invoke-virtual {p1}, Lv2/com/playhaven/utils/PHURLOpener;->getTargetURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v6, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->LaunchedURL:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    invoke-virtual {v6}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "event":Ljava/lang/String;
    iget-object v6, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v6, v2, v4}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->sendEventToRequester(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "launch_url_key":Ljava/lang/String;
    .end local v4    # "message":Landroid/os/Bundle;
    .end local v5    # "r":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 62
    .restart local v4    # "message":Landroid/os/Bundle;
    sget-object v6, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->CloseType:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v6}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "close_type_key":Ljava/lang/String;
    sget-object v6, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->AdSelfDismiss:Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    invoke-virtual {v6}, Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v6, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->Dismissed:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    invoke-virtual {v6}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .restart local v2    # "event":Ljava/lang/String;
    iget-object v6, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v6, v2, v4}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->sendEventToRequester(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    iget-object v6, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;
    check-cast p0, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {p0}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->dismiss()V

    .line 73
    return-void

    .line 51
    .end local v0    # "close_type_key":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v4    # "message":Landroid/os/Bundle;
    .restart local p0    # "this":Lv2/com/playhaven/interstitial/jsbridge/handlers/LaunchHandler;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 52
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "PHInterstitialActivity - onURLOpenerFinished"

    sget-object v6, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v1, v8, v6}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0

    .line 53
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "PHInterstitialActivity - onURLOpenerFinished"

    sget-object v6, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v1, v8, v6}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method
