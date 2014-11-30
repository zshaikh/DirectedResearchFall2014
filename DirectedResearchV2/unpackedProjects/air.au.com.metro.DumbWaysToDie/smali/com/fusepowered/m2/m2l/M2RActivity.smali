.class public Lcom/fusepowered/m2/m2l/M2RActivity;
.super Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;
.source "MraidActivity.java"


# instance fields
.field private mMraidView:Lcom/fusepowered/m2/m2l/MraidView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/M2RActivity;)Lcom/fusepowered/m2/m2l/MraidView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RActivity;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    return-object v0
.end method

.method private static createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "htmlData"    # Ljava/lang/String;
    .param p2, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fusepowered/m2/m2l/M2RActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "Ad-Configuration"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    return-object v0
.end method

.method static preRenderHtml(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customEventInterstitialListener"    # Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
    .param p2, "htmlData"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v1, 0x0

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;->DISABLED:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    sget-object v3, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    sget-object v4, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->INTERSTITIAL:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;->create(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    .line 64
    .local v0, "dummyMraidView":Lcom/fusepowered/m2/m2l/MraidView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->enablePlugins(Z)V

    .line 65
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidActivity$1;

    invoke-direct {v1, p1}, Lcom/fusepowered/m2/m2l/MraidActivity$1;-><init>(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->setMraidListener(Lcom/fusepowered/m2/m2l/MraidView$MraidListener;)V

    .line 84
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidActivity$2;

    invoke-direct {v1, p1}, Lcom/fusepowered/m2/m2l/MraidActivity$2;-><init>(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 95
    invoke-virtual {v0, p2}, Lcom/fusepowered/m2/m2l/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "htmlData"    # Ljava/lang/String;
    .param p2, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 99
    invoke-static {p0, p1, p2}, Lcom/fusepowered/m2/m2l/M2RActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Landroid/content/Intent;

    move-result-object v1

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v2, "MraidInterstitial"

    const-string v3, "MraidActivity.class not found. Did you declare MraidActivity in your manifest?"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 5

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RActivity;->getAdConfiguration()Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;->DISABLED:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    sget-object v3, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    sget-object v4, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->INTERSTITIAL:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;->create(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/M2RActivity;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    .line 119
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/M2RActivity;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    new-instance v2, Lcom/fusepowered/m2/m2l/MraidActivity$3;

    invoke-direct {v2, p0}, Lcom/fusepowered/m2/m2l/MraidActivity$3;-><init>(Lcom/fusepowered/m2/m2l/M2RActivity;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/m2l/MraidView;->setMraidListener(Lcom/fusepowered/m2/m2l/MraidView$MraidListener;)V

    .line 130
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/M2RActivity;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    new-instance v2, Lcom/fusepowered/m2/m2l/MraidActivity$4;

    invoke-direct {v2, p0}, Lcom/fusepowered/m2/m2l/MraidActivity$4;-><init>(Lcom/fusepowered/m2/m2l/M2RActivity;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/m2l/MraidView;->setOnCloseButtonStateChange(Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Html-Response-Body"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "source":Ljava/lang/String;
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/M2RActivity;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v1, v0}, Lcom/fusepowered/m2/m2l/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/M2RActivity;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v2, 0x1000000

    .line 148
    invoke-super {p0, p1}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const-string v0, "com.mopub.action.interstitial.show"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/M2RActivity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/fusepowered/m2/m2l/util/VersionCode;->currentApiLevel()Lcom/fusepowered/m2/m2l/util/VersionCode;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/util/VersionCode;->ICE_CREAM_SANDWICH:Lcom/fusepowered/m2/m2l/util/VersionCode;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/util/VersionCode;->isAtLeast(Lcom/fusepowered/m2/m2l/util/VersionCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 156
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RActivity;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->destroy()V

    .line 173
    const-string v0, "com.mopub.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/M2RActivity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 174
    invoke-super {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->onDestroy()V

    .line 175
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->onPause()V

    .line 161
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RActivity;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/WebViews;->onPause(Landroid/webkit/WebView;)V

    .line 162
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RActivity;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/WebViews;->onResume(Landroid/webkit/WebView;)V

    .line 168
    return-void
.end method
