.class public Lcom/bitrhymes/admobext/AdMobExtAdListener;
.super Ljava/lang/Object;
.source "AdMobExtAdListener.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdMob"

.field static context:Lcom/adobe/fre/FREContext;


# instance fields
.field interstitial:Lcom/google/ads/InterstitialAd;


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;Lcom/google/ads/InterstitialAd;)V
    .locals 0
    .parameter "contextObj"
    .parameter "interstitialObj"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sput-object p1, Lcom/bitrhymes/admobext/AdMobExtAdListener;->context:Lcom/adobe/fre/FREContext;

    .line 20
    iput-object p2, p0, Lcom/bitrhymes/admobext/AdMobExtAdListener;->interstitial:Lcom/google/ads/InterstitialAd;

    .line 21
    return-void
.end method


# virtual methods
.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 25
    const-string v0, "AdMob"

    const-string v1, "onDismissScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/bitrhymes/admobext/AdMobContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/bitrhymes/admobext/AdMobContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "ON_DISPLAY_AD_EVENT"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 3
    .parameter "arg0"
    .parameter "error"

    .prologue
    .line 34
    const-string v0, "AdMob"

    const-string v1, "onFailedToReceiveAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/bitrhymes/admobext/AdMobContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/bitrhymes/admobext/AdMobContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "ON_RECEIVE_AD_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 43
    const-string v0, "AdMob"

    const-string v1, "onLeaveApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 48
    const-string v0, "AdMob"

    const-string v1, "onPresentScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lcom/bitrhymes/admobext/AdMobContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/bitrhymes/admobext/AdMobContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "ON_DISPLAY_AD_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 3
    .parameter "ad"

    .prologue
    .line 57
    const-string v0, "AdMob"

    const-string v1, "onReceiveAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/bitrhymes/admobext/AdMobContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bitrhymes/admobext/AdMobExtAdListener;->interstitial:Lcom/google/ads/InterstitialAd;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/bitrhymes/admobext/AdMobExtAdListener;->interstitial:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/bitrhymes/admobext/AdMobContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "ON_RECEIVE_AD_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/bitrhymes/admobext/AdMobExtAdListener;->interstitial:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->show()V

    .line 65
    :cond_0
    return-void
.end method
