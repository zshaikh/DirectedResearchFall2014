.class public Lcom/fuse/ane/callback/AdCallback;
.super Lcom/fusepowered/util/FuseAdCallback;


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/util/FuseAdCallback;-><init>()V

    iput-object p1, p0, Lcom/fuse/ane/callback/AdCallback;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public adAvailabilityResponse(II)V
    .locals 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/fusepowered/util/FuseAdErrors;->getFuseAdErrorByCode(I)Lcom/fusepowered/util/FuseAdErrors;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/util/FuseAdErrors;->FUSE_AD_NO_ERROR:Lcom/fusepowered/util/FuseAdErrors;

    if-eq v1, v2, :cond_0

    const-string v1, "AdAvailabilityRequestError"

    invoke-static {v1, v0}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->dispatch(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "AdAvailabilityRequestAdAvialable"

    invoke-static {v1, v0}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->dispatch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "AdAvailabilityRequestAdNotAvialable"

    invoke-static {v1, v0}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->dispatch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public adClicked()V
    .locals 1

    const-string v0, "Ad Clicked"

    invoke-static {v0}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->log(Ljava/lang/String;)V

    return-void
.end method

.method public adDisplayed()V
    .locals 1

    const-string v0, "Ad Displayed"

    invoke-static {v0}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->log(Ljava/lang/String;)V

    return-void
.end method

.method public adWillClose()V
    .locals 2

    const-string v0, "FUSE API CALLBACK"

    const-string v1, " ******************* DISPATCHING AD WILL CLOSE *******************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DidCloseInterstitial"

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->dispatch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public callback()V
    .locals 1

    const-string v0, "Ad callback"

    invoke-static {v0}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->log(Ljava/lang/String;)V

    return-void
.end method
