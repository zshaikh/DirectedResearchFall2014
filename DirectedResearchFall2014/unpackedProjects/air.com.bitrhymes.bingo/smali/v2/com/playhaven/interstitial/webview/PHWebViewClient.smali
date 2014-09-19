.class public Lv2/com/playhaven/interstitial/webview/PHWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PHWebViewClient.java"


# instance fields
.field private bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

.field private config:Lv2/com/playhaven/configuration/PHConfiguration;

.field private content:Lv2/com/playhaven/model/PHContent;

.field private contentDisplayer:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;Lv2/com/playhaven/model/PHContent;)V
    .locals 1
    .parameter "contentDisplayer"
    .parameter "bridge"
    .parameter "content"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 42
    iput-object p2, p0, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->contentDisplayer:Ljava/lang/ref/WeakReference;

    .line 44
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    .line 45
    iput-object p3, p0, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->content:Lv2/com/playhaven/model/PHContent;

    .line 46
    return-void
.end method

.method private routePlayhavenCallback(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received webview callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 153
    :try_start_0
    iget-object v1, p0, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    invoke-virtual {v1, p1}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->hasRoute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    invoke-virtual {v1, p1}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->route(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    const/4 v1, 0x1

    .line 162
    :goto_0
    return v1

    .line 158
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 159
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PHWebViewClient - url routing"

    sget-object v2, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    .line 162
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doesntHaveContentDisplayer()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->contentDisplayer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 94
    :try_start_0
    const-string v1, "ph://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->routePlayhavenCallback(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PHWebViewClient - onLoadResource"

    sget-object v2, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "webview"
    .parameter "url"

    .prologue
    .line 61
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->doesntHaveContentDisplayer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local p0
    :cond_1
    iget-object v2, p0, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->content:Lv2/com/playhaven/model/PHContent;

    iget-object v2, v2, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    sget-object v2, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->Loaded:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    invoke-virtual {v2}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, event:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v1, message:Landroid/os/Bundle;
    sget-object v2, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->Content:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v2}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->content:Lv2/com/playhaven/model/PHContent;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    iget-object v2, p0, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {p0, v0, v1}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->sendEventToRequester(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 105
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->doesntHaveContentDisplayer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    .end local p0
    :goto_0
    return-void

    .line 109
    .restart local p0
    :cond_0
    :try_start_0
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 111
    const-string v3, "Error loading template at url: %s Code: %d Description: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 113
    invoke-static {p3}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 116
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v2, message:Landroid/os/Bundle;
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->Failed:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    invoke-virtual {v3}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, event:Ljava/lang/String;
    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {p0, v1, v2}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->sendEventToRequester(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v1           #event:Ljava/lang/String;
    .end local v2           #message:Landroid/os/Bundle;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 124
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PHWebViewClient - onReceivedError"

    sget-object v4, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->low:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v3, v4}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "webview"
    .parameter "url"

    .prologue
    .line 134
    :try_start_0
    invoke-direct {p0, p2}, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;->routePlayhavenCallback(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    :goto_0
    return v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PHWebViewClient - shouldOverrideUrlLoading"

    sget-object v2, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    .line 139
    const/4 v1, 0x0

    goto :goto_0
.end method
