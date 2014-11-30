.class public Lcom/fusepowered/m2/m2l/M2Activity;
.super Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;
.source "MoPubActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/MoPubActivity$BroadcastingInterstitialListener;
    }
.end annotation


# instance fields
.field private mHtmlInterstitialWebView:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/M2Activity;)Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    return-object v0
.end method

.method static createIntent(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "htmlData"    # Ljava/lang/String;
    .param p2, "isScrollable"    # Z
    .param p3, "redirectUrl"    # Ljava/lang/String;
    .param p4, "clickthroughUrl"    # Ljava/lang/String;
    .param p5, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fusepowered/m2/m2l/M2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "Scrollable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const-string v1, "Clickthrough-Url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "Redirect-Url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "Ad-Configuration"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    return-object v0
.end method

.method static preRenderHtml(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customEventInterstitialListener"    # Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
    .param p2, "htmlData"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    move-result-object v6

    .line 81
    .local v6, "dummyWebView":Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;
    invoke-virtual {v6, v2}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->enablePlugins(Z)V

    .line 83
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubActivity$1;

    invoke-direct {v0, p1}, Lcom/fusepowered/m2/m2l/MoPubActivity$1;-><init>(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v6, v0}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->addMoPubUriJavascriptInterface(Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;)V

    .line 89
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubActivity$2;

    invoke-direct {v0, p1}, Lcom/fusepowered/m2/m2l/MoPubActivity$2;-><init>(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v6, v0}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 101
    invoke-virtual {v6, p2}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "htmlData"    # Ljava/lang/String;
    .param p2, "isScrollable"    # Z
    .param p3, "redirectUrl"    # Ljava/lang/String;
    .param p4, "clickthroughUrl"    # Ljava/lang/String;
    .param p5, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 60
    invoke-static/range {p0 .. p5}, Lcom/fusepowered/m2/m2l/M2Activity;->createIntent(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Landroid/content/Intent;

    move-result-object v1

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v2, "MoPubActivity"

    const-string v3, "MoPubActivity not found - did you declare it in AndroidManifest.xml?"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 8

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 107
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "Scrollable"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 108
    .local v2, "isScrollable":Z
    const-string v0, "Redirect-Url"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "redirectUrl":Ljava/lang/String;
    const-string v0, "Clickthrough-Url"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "clickthroughUrl":Ljava/lang/String;
    const-string v0, "Html-Response-Body"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "htmlResponse":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/m2/m2l/MoPubActivity$BroadcastingInterstitialListener;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/MoPubActivity$BroadcastingInterstitialListener;-><init>(Lcom/fusepowered/m2/m2l/M2Activity;)V

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2Activity;->getAdConfiguration()Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    .line 113
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    invoke-virtual {v0, v6}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "com.mopub.action.interstitial.show"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/M2Activity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    sget-object v1, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->destroy()V

    .line 128
    const-string v0, "com.mopub.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/M2Activity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 129
    invoke-super {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->onDestroy()V

    .line 130
    return-void
.end method
