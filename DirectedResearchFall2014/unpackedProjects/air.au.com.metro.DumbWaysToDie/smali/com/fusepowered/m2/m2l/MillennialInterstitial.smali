.class Lcom/fusepowered/m2/m2l/MillennialInterstitial;
.super Lcom/fusepowered/m2/m2l/CustomEventInterstitial;
.source "MillennialInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final APID_KEY:Ljava/lang/String; = "adUnitID"


# instance fields
.field private mBroadcastReceiver:Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;

.field private mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

.field private mMillennialInterstitial:Lcom/fusepowered/m1/android/MMInterstitial;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/MillennialInterstitial;)Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/MillennialInterstitial;)Lcom/fusepowered/m1/android/MMInterstitial;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mMillennialInterstitial:Lcom/fusepowered/m1/android/MMInterstitial;

    return-object v0
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
    .line 104
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "adUnitID"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected loadInterstitial(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
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
    .line 58
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 61
    invoke-direct {p0, p4}, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const-string v2, "adUnitID"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "apid":Ljava/lang/String;
    invoke-static {p1}, Lcom/fusepowered/m1/android/MMSDK;->initialize(Landroid/content/Context;)V

    .line 69
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK;->setBroadcastEvents(Z)V

    .line 71
    new-instance v2, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;-><init>(Lcom/fusepowered/m2/m2l/MillennialInterstitial;)V

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mBroadcastReceiver:Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;

    .line 72
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mBroadcastReceiver:Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;

    invoke-virtual {v2, p1}, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 74
    const-string v2, "location"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 75
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMRequest;->setUserLocation(Landroid/location/Location;)V

    .line 77
    :cond_0
    new-instance v2, Lcom/fusepowered/m1/android/MMInterstitial;

    invoke-direct {v2, p1}, Lcom/fusepowered/m1/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mMillennialInterstitial:Lcom/fusepowered/m1/android/MMInterstitial;

    .line 78
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mMillennialInterstitial:Lcom/fusepowered/m1/android/MMInterstitial;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMInterstitial;->isAdAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    const-string v2, "MoPub"

    const-string v3, "Millennial interstitial ad already loaded."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v2}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 86
    .end local v0    # "apid":Ljava/lang/String;
    .end local v1    # "location":Landroid/location/Location;
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v3, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0

    .line 82
    .restart local v0    # "apid":Ljava/lang/String;
    .restart local v1    # "location":Landroid/location/Location;
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mMillennialInterstitial:Lcom/fusepowered/m1/android/MMInterstitial;

    new-instance v3, Lcom/fusepowered/m1/android/MMRequest;

    invoke-direct {v3}, Lcom/fusepowered/m1/android/MMRequest;-><init>()V

    invoke-virtual {v2, v3}, Lcom/fusepowered/m1/android/MMInterstitial;->setMMRequest(Lcom/fusepowered/m1/android/MMRequest;)V

    .line 83
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mMillennialInterstitial:Lcom/fusepowered/m1/android/MMInterstitial;

    invoke-virtual {v2, v0}, Lcom/fusepowered/m1/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mMillennialInterstitial:Lcom/fusepowered/m1/android/MMInterstitial;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMInterstitial;->fetch()V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mMillennialInterstitial:Lcom/fusepowered/m1/android/MMInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMInterstitial;->setListener(Lcom/fusepowered/m1/android/RequestListener;)V

    .line 100
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mBroadcastReceiver:Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->unregister()V

    .line 101
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mMillennialInterstitial:Lcom/fusepowered/m1/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mMillennialInterstitial:Lcom/fusepowered/m1/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMInterstitial;->display()Z

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Tried to show a Millennial interstitial ad before it finished loading. Please try again."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
