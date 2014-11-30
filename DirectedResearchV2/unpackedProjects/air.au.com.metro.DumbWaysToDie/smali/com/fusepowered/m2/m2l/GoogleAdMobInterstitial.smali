.class Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;
.super Lcom/fusepowered/m2/m2l/CustomEventInterstitial;
.source "GoogleAdMobInterstitial.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# static fields
.field public static final AD_UNIT_ID_KEY:Ljava/lang/String; = "adUnitID"

.field public static final LOCATION_KEY:Ljava/lang/String; = "location"


# instance fields
.field private mHasAlreadyRegisteredClick:Z

.field private mInterstitialAd:Lcom/google/ads/InterstitialAd;

.field private mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method private extractLocation(Ljava/util/Map;)Landroid/location/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/location/Location;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "location"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "location":Ljava/lang/Object;
    instance-of v1, v0, Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Landroid/location/Location;

    .end local v0    # "location":Ljava/lang/Object;
    move-object v1, v0

    .line 115
    :goto_0
    return-object v1

    .restart local v0    # "location":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "adUnitID"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method getAdMobInterstitial()Lcom/google/ads/InterstitialAd;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialAd:Lcom/google/ads/InterstitialAd;

    return-object v0
.end method

.method protected loadInterstitial(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventInterstitialListener"    # Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 72
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v4, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v3, v4}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 92
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 78
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    invoke-direct {p0, p4}, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    const-string v3, "adUnitID"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    .local v2, "pubId":Ljava/lang/String;
    new-instance v3, Lcom/google/ads/InterstitialAd;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v3, p1, v2}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialAd:Lcom/google/ads/InterstitialAd;

    .line 86
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialAd:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v3, p0}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 88
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 89
    .local v0, "adRequest":Lcom/google/ads/AdRequest;
    invoke-direct {p0, p3}, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->extractLocation(Ljava/util/Map;)Landroid/location/Location;

    move-result-object v1

    .line 90
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setLocation(Landroid/location/Location;)Lcom/google/ads/AdRequest;

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialAd:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v3, v0}, Lcom/google/ads/InterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V

    goto :goto_0

    .line 81
    .end local v0    # "adRequest":Lcom/google/ads/AdRequest;
    .end local v1    # "location":Landroid/location/Location;
    .end local v2    # "pubId":Ljava/lang/String;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v4, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v3, v4}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 133
    const-string v0, "MoPub"

    const-string v1, "Google AdMob interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 135
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;
    .param p2, "error"    # Lcom/google/ads/AdRequest$ErrorCode;

    .prologue
    .line 139
    const-string v0, "MoPub"

    const-string v1, "Google AdMob interstitial ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 141
    return-void
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialAd:Lcom/google/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialAd:Lcom/google/ads/InterstitialAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mHasAlreadyRegisteredClick:Z

    if-nez v0, :cond_0

    .line 146
    const-string v0, "MoPub"

    const-string v1, "Google AdMob interstitial ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mHasAlreadyRegisteredClick:Z

    .line 148
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 150
    :cond_0
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 154
    const-string v0, "MoPub"

    const-string v1, "Showing Google AdMob interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 156
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 160
    const-string v0, "MoPub"

    const-string v1, "Google AdMob interstitial ad loaded successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 162
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialAd:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobInterstitial;->mInterstitialAd:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->show()V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Tried to show a Google AdMob interstitial ad before it finished loading. Please try again."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
