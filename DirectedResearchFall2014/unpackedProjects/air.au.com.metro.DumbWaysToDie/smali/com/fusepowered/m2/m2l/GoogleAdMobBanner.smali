.class Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;
.super Lcom/fusepowered/m2/m2l/CustomEventBanner;
.source "GoogleAdMobBanner.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# static fields
.field public static final AD_HEIGHT_KEY:Ljava/lang/String; = "adHeight"

.field public static final AD_UNIT_ID_KEY:Ljava/lang/String; = "adUnitID"

.field public static final AD_WIDTH_KEY:Ljava/lang/String; = "adWidth"

.field public static final LOCATION_KEY:Ljava/lang/String; = "location"


# instance fields
.field private mAdMobView:Lcom/google/ads/AdView;

.field private mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventBanner;-><init>()V

    return-void
.end method

.method private calculateAdSize(II)Lcom/google/ads/AdSize;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 131
    sget-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 132
    sget-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    .line 140
    :goto_0
    return-object v0

    .line 133
    :cond_0
    sget-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_1

    sget-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 134
    sget-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    goto :goto_0

    .line 135
    :cond_1
    sget-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_2

    sget-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 136
    sget-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    goto :goto_0

    .line 137
    :cond_2
    sget-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_3

    sget-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 138
    sget-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    goto :goto_0

    .line 140
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
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
    .line 122
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "location"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "location":Ljava/lang/Object;
    instance-of v1, v0, Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Landroid/location/Location;

    .end local v0    # "location":Ljava/lang/Object;
    move-object v1, v0

    .line 126
    :goto_0
    return-object v1

    .restart local v0    # "location":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .line 146
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "adWidth"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 147
    const-string v1, "adHeight"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    const-string v1, "adUnitID"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    .line 148
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 149
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getAdMobView()Lcom/google/ads/AdView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mAdMobView:Lcom/google/ads/AdView;

    return-object v0
.end method

.method protected loadBanner(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
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
    .line 77
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    .line 83
    instance-of v6, p1, Landroid/app/Activity;

    if-nez v6, :cond_0

    .line 84
    iget-object v6, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    sget-object v7, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v6, v7}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 112
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 88
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    invoke-direct {p0, p4}, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    const-string v6, "adUnitID"

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "adUnitId":Ljava/lang/String;
    const-string v6, "adWidth"

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 91
    .local v3, "adWidth":I
    const-string v6, "adHeight"

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "adHeight":I
    invoke-direct {p0, v3, v0}, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->calculateAdSize(II)Lcom/google/ads/AdSize;

    move-result-object v1

    .line 98
    .local v1, "adSize":Lcom/google/ads/AdSize;
    if-nez v1, :cond_2

    .line 99
    const-string v6, "MoPub"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unsupported AdMob ad size: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v6, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    sget-object v7, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v6, v7}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0

    .line 93
    .end local v0    # "adHeight":I
    .end local v1    # "adSize":Lcom/google/ads/AdSize;
    .end local v2    # "adUnitId":Ljava/lang/String;
    .end local v3    # "adWidth":I
    :cond_1
    iget-object v6, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    sget-object v7, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v6, v7}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0

    .line 104
    .restart local v0    # "adHeight":I
    .restart local v1    # "adSize":Lcom/google/ads/AdSize;
    .restart local v2    # "adUnitId":Ljava/lang/String;
    .restart local v3    # "adWidth":I
    :cond_2
    new-instance v6, Lcom/google/ads/AdView;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v6, p1, v1, v2}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mAdMobView:Lcom/google/ads/AdView;

    .line 105
    iget-object v6, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v6, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 107
    new-instance v5, Lcom/google/ads/AdRequest;

    invoke-direct {v5}, Lcom/google/ads/AdRequest;-><init>()V

    .line 108
    .local v5, "request":Lcom/google/ads/AdRequest;
    invoke-direct {p0, p3}, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->extractLocation(Ljava/util/Map;)Landroid/location/Location;

    move-result-object v4

    .line 109
    .local v4, "location":Landroid/location/Location;
    if-eqz v4, :cond_3

    invoke-virtual {v5, v4}, Lcom/google/ads/AdRequest;->setLocation(Landroid/location/Location;)Lcom/google/ads/AdRequest;

    .line 111
    :cond_3
    iget-object v6, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v6, v5}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    goto :goto_0
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 187
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;
    .param p2, "error"    # Lcom/google/ads/AdRequest$ErrorCode;

    .prologue
    .line 165
    const-string v0, "MoPub"

    const-string v1, "Google AdMob banner ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 167
    return-void
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mAdMobView:Lcom/google/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 117
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mAdMobView:Lcom/google/ads/AdView;

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 119
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 183
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 171
    const-string v0, "MoPub"

    const-string v1, "Google AdMob banner ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 173
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 177
    const-string v0, "MoPub"

    const-string v1, "Google AdMob banner ad loaded successfully. Showing ad..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/GoogleAdMobBanner;->mAdMobView:Lcom/google/ads/AdView;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 179
    return-void
.end method
