.class public Lcom/applovin/adview/AppLovinInterstitialActivity;
.super Landroid/app/Activity;


# static fields
.field public static final KEY_WRAPPER_ID:Ljava/lang/String; = "com.applovin.interstitial.wrapper_id"


# instance fields
.field private a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

.field private b:Lcom/applovin/impl/adview/ah;

.field private volatile c:Z

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    iput v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:I

    iput v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:I

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/ah;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    return-object v0
.end method


# virtual methods
.method public exitWithError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AppLovinInterstitialActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to properly render an Interstitial Activity, due to error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/applovin/adview/AppLovinInterstitialActivity;->requestWindowFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x1030011

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.applovin.interstitial.wrapper_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/applovin/impl/adview/ah;->a(Ljava/lang/String;)Lcom/applovin/impl/adview/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->a()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/ah;->e()Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;->ACTIVITY_PORTRAIT:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    :cond_0
    invoke-virtual {p0, v3}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    :goto_1
    new-instance v0, Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v0, v1, p0}, Lcom/applovin/impl/adview/AppLovinAdViewInternal;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    invoke-virtual {v0, v5}, Lcom/applovin/impl/adview/AppLovinAdViewInternal;->setAutoDestroy(Z)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x4500

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setContentView(Landroid/view/View;)V

    :goto_2
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->renderDialog()V

    return-void

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iput-boolean v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    :cond_2
    invoke-virtual {p0, v5}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_3
    const-string v0, "No current ad found."

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "Wrapper is null"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "Wrapper ID is null"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinAdViewInternal;->destroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinAdViewInternal;->getAdViewControllerJsInterface()Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->pauseVideo(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->getPlaybackTime()I

    move-result v1

    iput v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:I

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->getPercentViewed()I

    move-result v0

    iput v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinAdViewInternal;->getAdViewControllerJsInterface()Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    move-result-object v0

    iget v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:I

    const/16 v2, 0x62

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:I

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->setPlaybackTime(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->pauseVideo(Ljava/util/Map;)V

    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->STOPPED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->notifyJavaScriptOfNewState(Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:I

    goto :goto_0
.end method

.method protected renderDialog()V
    .locals 2

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    new-instance v1, Lcom/applovin/adview/a;

    invoke-direct {v1, p0}, Lcom/applovin/adview/a;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinAdViewInternal;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    new-instance v1, Lcom/applovin/adview/b;

    invoke-direct {v1, p0}, Lcom/applovin/adview/b;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinAdViewInternal;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    new-instance v1, Lcom/applovin/adview/c;

    invoke-direct {v1, p0}, Lcom/applovin/adview/c;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinAdViewInternal;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/ah;->a()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinAdViewInternal;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/ah;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "AdView was null"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_0
.end method
