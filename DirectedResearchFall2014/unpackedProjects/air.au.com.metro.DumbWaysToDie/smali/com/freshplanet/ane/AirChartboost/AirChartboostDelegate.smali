.class public Lcom/freshplanet/ane/AirChartboost/AirChartboostDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chartboost/sdk/ChartboostDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did cache interstitial for location \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "DidCacheInterstitial"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didCacheMoreApps()V
    .locals 3

    const-string v0, "Did cache More Apps."

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "DidCacheMoreApps"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did click interstitial for location \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "DidClickInterstitial"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didClickMoreApps()V
    .locals 3

    const-string v0, "Did click More Apps."

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "DidClickMoreApps"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did close interstitial for location \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "DidCloseInterstitial"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didCloseMoreApps()V
    .locals 3

    const-string v0, "Did close More Apps."

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "DidCloseMoreApps"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did dismiss interstitial for location \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "DidDismissInterstitial"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didDismissMoreApps()V
    .locals 3

    const-string v0, "Did dismiss More Apps."

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "DidDismissMoreApps"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did fail to load interstitial for location \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "DidFailToLoadInterstitial"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didFailToLoadMoreApps()V
    .locals 3

    const-string v0, "Did fail to load More Apps."

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "DidFailToLoadMoreApps"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didShowInterstitial(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did show interstitial for location \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "DidShowInterstitial"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didShowMoreApps()V
    .locals 3

    const-string v0, "Did show More Apps."

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "DidShowMoreApps"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should display interstitial for location \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"? Yes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayLoadingViewForMoreApps()Z
    .locals 1

    const-string v0, "Should display loading view for More Apps? Yes."

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps()Z
    .locals 1

    const-string v0, "Should display More Apps? Yes."

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should request interstitial for location \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"? Yes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitialsInFirstSession()Z
    .locals 1

    const-string v0, "Should request interstitials in first session? Yes."

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps()Z
    .locals 1

    const-string v0, "Should request More Apps? Yes."

    invoke-static {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
