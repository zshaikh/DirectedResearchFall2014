.class public Lcom/bitrhymes/applovin/ShowOverInterstitialAd;
.super Ljava/lang/Object;
.source "ShowOverInterstitialAd.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "freContext"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v4, ","

    .line 20
    :try_start_0
    invoke-static {p1}, Lcom/bitrhymes/applovin/AndroidExtensionContext;->setFREContext(Lcom/adobe/fre/FREContext;)V

    .line 21
    sget-object v1, Lcom/bitrhymes/applovin/Utils;->appLovinInterestitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v1

    .line 22
    sput-object v1, Lcom/bitrhymes/applovin/Utils;->appLovinInterestitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    .line 25
    :cond_0
    sget-object v1, Lcom/bitrhymes/applovin/Utils;->appLovinInterestitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    new-instance v2, Lcom/bitrhymes/applovin/ShowOverInterstitialAd$1;

    invoke-direct {v2, p0}, Lcom/bitrhymes/applovin/ShowOverInterstitialAd$1;-><init>(Lcom/bitrhymes/applovin/ShowOverInterstitialAd;)V

    invoke-interface {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 41
    sget-object v1, Lcom/bitrhymes/applovin/Utils;->appLovinInterestitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 63
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 66
    const-string v1, "APPLOVIN_ERROR_EVENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/bitrhymes/applovin/Utils;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p1, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
