.class public Lcom/stuv/ane/trialpay/TrialPayActivity;
.super Landroid/app/Activity;
.source "TrialPayActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v11, "TrialPayActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "A"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stuv/ane/trialpay/TrialPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/stuv/ane/trialpay/TrialPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 46
    .local v5, "intent":Landroid/content/Intent;
    const-string v11, "sid"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, "sid":Ljava/lang/String;
    const-string v11, "apiCode"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "apiCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/trialpay/TrialPayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "android_id"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "android_id":Ljava/lang/String;
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/stuv/ane/trialpay/TrialPayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 58
    .local v9, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "device_id":Ljava/lang/String;
    const-string v11, "wifi"

    invoke-virtual {p0, v11}, Lcom/stuv/ane/trialpay/TrialPayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 62
    .local v10, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 63
    .local v4, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v11

    const-string v12, ":"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "mac":Ljava/lang/String;
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v7, "offerWallWebView":Landroid/webkit/WebView;
    invoke-virtual {p0, v7}, Lcom/stuv/ane/trialpay/TrialPayActivity;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 70
    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 71
    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 74
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "https://www.trialpay.com/dispatch/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 75
    const-string v12, "sid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 76
    const-string v12, "&androidid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "utf-8"

    invoke-static {v0, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 77
    const-string v12, "&imei="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 78
    const-string v12, "&mac="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "utf-8"

    invoke-static {v6, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 74
    invoke-virtual {v7, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    new-instance v11, Lcom/stuv/ane/trialpay/TrialPayActivity$1;

    invoke-direct {v11, p0}, Lcom/stuv/ane/trialpay/TrialPayActivity$1;-><init>(Lcom/stuv/ane/trialpay/TrialPayActivity;)V

    invoke-virtual {v7, v11}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 108
    return-void

    .line 79
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 82
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
