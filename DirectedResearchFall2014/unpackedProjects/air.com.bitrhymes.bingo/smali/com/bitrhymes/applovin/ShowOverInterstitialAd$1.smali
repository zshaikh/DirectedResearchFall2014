.class Lcom/bitrhymes/applovin/ShowOverInterstitialAd$1;
.super Ljava/lang/Object;
.source "ShowOverInterstitialAd.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/applovin/ShowOverInterstitialAd;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/applovin/ShowOverInterstitialAd;


# direct methods
.method constructor <init>(Lcom/bitrhymes/applovin/ShowOverInterstitialAd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/applovin/ShowOverInterstitialAd$1;->this$0:Lcom/bitrhymes/applovin/ShowOverInterstitialAd;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 36
    const-string v0, "AppLovin-AdLoadListener"

    const-string v1, "adDisplayed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3
    .parameter "ad"

    .prologue
    const/4 v2, 0x0

    .line 28
    const-string v0, "AppLovin-AdLoadListener"

    const-string v1, "adHidden "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v0, Lcom/bitrhymes/applovin/Utils;->appLovinInterestitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0, v2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 31
    sput-object v2, Lcom/bitrhymes/applovin/Utils;->appLovinInterestitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    .line 33
    return-void
.end method
