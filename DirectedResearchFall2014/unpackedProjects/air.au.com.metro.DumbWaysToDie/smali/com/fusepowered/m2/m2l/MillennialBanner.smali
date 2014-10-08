.class Lcom/fusepowered/m2/m2l/MillennialBanner;
.super Lcom/fusepowered/m2/m2l/CustomEventBanner;
.source "MillennialBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final AD_HEIGHT_KEY:Ljava/lang/String; = "adHeight"

.field public static final AD_WIDTH_KEY:Ljava/lang/String; = "adWidth"

.field public static final APID_KEY:Ljava/lang/String; = "adUnitID"


# instance fields
.field private mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

.field private mBroadcastReceiver:Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;

.field private mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/MillennialBanner;)Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/MillennialBanner;)Lcom/fusepowered/m1/android/MMAdView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;

    return-object v0
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 2
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
    .line 93
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "adWidth"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/m2/m2l/MillennialBanner;
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    const-string v1, "adHeight"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const-string v1, "adUnitID"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    .line 95
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getMMAdView()Lcom/fusepowered/m1/android/MMAdView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;

    return-object v0
.end method

.method protected loadBanner(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventBannerListener"    # Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;",
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
    .line 57
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    .line 62
    invoke-direct {p0, p4}, Lcom/fusepowered/m2/m2l/MillennialBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    const-string v4, "adUnitID"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "apid":Ljava/lang/String;
    const-string v4, "adWidth"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 65
    .local v3, "width":I
    const-string v4, "adHeight"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, "height":I
    invoke-static {p1}, Lcom/fusepowered/m1/android/MMSDK;->initialize(Landroid/content/Context;)V

    .line 72
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/fusepowered/m1/android/MMSDK;->setBroadcastEvents(Z)V

    .line 74
    new-instance v4, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;-><init>(Lcom/fusepowered/m2/m2l/MillennialBanner;)V

    iput-object v4, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mBroadcastReceiver:Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;

    .line 75
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mBroadcastReceiver:Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;

    invoke-virtual {v4, p1}, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 77
    new-instance v4, Lcom/fusepowered/m1/android/MMAdView;

    invoke-direct {v4, p1}, Lcom/fusepowered/m1/android/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;

    .line 78
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;

    invoke-virtual {v4, v0}, Lcom/fusepowered/m1/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;

    invoke-virtual {v4, v3}, Lcom/fusepowered/m1/android/MMAdView;->setWidth(I)V

    .line 80
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;

    invoke-virtual {v4, v1}, Lcom/fusepowered/m1/android/MMAdView;->setHeight(I)V

    .line 82
    const-string v4, "location"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 83
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMRequest;->setUserLocation(Landroid/location/Location;)V

    .line 85
    :cond_0
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;

    new-instance v5, Lcom/fusepowered/m1/android/MMRequest;

    invoke-direct {v5}, Lcom/fusepowered/m1/android/MMRequest;-><init>()V

    invoke-virtual {v4, v5}, Lcom/fusepowered/m1/android/MMAdView;->setMMRequest(Lcom/fusepowered/m1/android/MMRequest;)V

    .line 86
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;

    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->getDefaultAdId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/fusepowered/m1/android/MMAdView;->setId(I)V

    .line 87
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;

    invoke-static {v4}, Lcom/fusepowered/m2/m2l/AdViewController;->setShouldHonorServerDimensions(Landroid/view/View;)V

    .line 88
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/MMAdView;->getAd()V

    .line 89
    .end local v0    # "apid":Ljava/lang/String;
    .end local v1    # "height":I
    .end local v2    # "location":Landroid/location/Location;
    .end local v3    # "width":I
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    sget-object v5, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v4, v5}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMAdView;->setListener(Lcom/fusepowered/m1/android/RequestListener;)V

    .line 105
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialBanner;->mBroadcastReceiver:Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;->unregister()V

    .line 106
    return-void
.end method
