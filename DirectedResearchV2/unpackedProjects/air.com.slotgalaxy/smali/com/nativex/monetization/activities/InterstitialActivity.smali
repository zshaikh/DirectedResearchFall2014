.class public Lcom/nativex/monetization/activities/InterstitialActivity;
.super Landroid/app/Activity;
.source "InterstitialActivity.java"


# static fields
.field public static final INTENT_EXTRA_AD_NAME:Ljava/lang/String; = "mraidAdName"

.field public static final INTENT_EXTRA_USER_CALL:Ljava/lang/String; = "mraidUserCall"


# instance fields
.field private adName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private onBackPressedMRAID()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nativex/monetization/activities/InterstitialActivity;->adName:Ljava/lang/String;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)V

    .line 93
    return-void
.end method

.method private onCreateMRAID(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v3, "mraidUserCall"

    .line 78
    invoke-virtual {p0}, Lcom/nativex/monetization/activities/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mraidAdName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nativex/monetization/activities/InterstitialActivity;->adName:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/nativex/monetization/activities/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mraidUserCall"

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 80
    .local v0, "userCall":Z
    invoke-virtual {p0}, Lcom/nativex/monetization/activities/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mraidUserCall"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 83
    const-string v1, "Showing interstitial ad"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/nativex/monetization/activities/InterstitialActivity;->adName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->showInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/nativex/monetization/activities/InterstitialActivity;->finish()V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 43
    invoke-direct {p0}, Lcom/nativex/monetization/activities/InterstitialActivity;->onBackPressedMRAID()V

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/nativex/monetization/activities/InterstitialActivity;->onCreateMRAID(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 65
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->createSession()V

    .line 66
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->releaseLater()V

    .line 70
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 56
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->endSession()V

    .line 57
    invoke-virtual {p0}, Lcom/nativex/monetization/activities/InterstitialActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->releaseLater()V

    .line 60
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->createSession()V

    .line 50
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->stopReleasingCache()V

    .line 51
    return-void
.end method
