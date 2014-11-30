.class Lcom/applovin/impl/adview/ab;
.super Landroid/app/Dialog;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/applovin/sdk/AppLovinLogger;

.field private c:Lcom/applovin/adview/AppLovinAdView;

.field private d:Ljava/lang/Runnable;

.field private e:Lcom/applovin/impl/adview/ah;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .locals 4

    const v0, 0x1030010

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/ab;->e:Lcom/applovin/impl/adview/ah;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/ab;->b:Lcom/applovin/sdk/AppLovinLogger;

    iput-object p2, p0, Lcom/applovin/impl/adview/ab;->a:Landroid/app/Activity;

    new-instance v0, Lcom/applovin/impl/adview/ag;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/ag;-><init>(Lcom/applovin/impl/adview/ab;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/ab;->d:Ljava/lang/Runnable;

    new-instance v0, Lcom/applovin/impl/adview/AppLovinAdViewInternal;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v0, p1, v1, p2}, Lcom/applovin/impl/adview/AppLovinAdViewInternal;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/adview/AppLovinAdView;

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/adview/AppLovinAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAutoDestroy(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/ab;->requestWindowFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/ab;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/ab;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "InterstitialAdDialog"

    const-string v3, "Set window flags failed."

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/ab;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v0}, Lcom/applovin/adview/AppLovinAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/applovin/impl/adview/ab;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x45000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/ab;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/adview/ab;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/adview/ab;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/adview/ab;)Lcom/applovin/adview/AppLovinAdView;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/adview/AppLovinAdView;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/adview/ab;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->b:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/adview/ah;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/impl/adview/ac;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/ac;-><init>(Lcom/applovin/impl/adview/ab;Lcom/applovin/impl/adview/ah;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/impl/adview/ad;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/ad;-><init>(Lcom/applovin/impl/adview/ab;Lcom/applovin/impl/adview/ah;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/impl/adview/ae;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/ae;-><init>(Lcom/applovin/impl/adview/ab;Lcom/applovin/impl/adview/ah;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/ab;->e:Lcom/applovin/impl/adview/ah;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/adview/ah;->a(Z)V

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->a:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/af;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/af;-><init>(Lcom/applovin/impl/adview/ab;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->e:Lcom/applovin/impl/adview/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->e:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->f()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    :cond_1
    iput-object v1, p0, Lcom/applovin/impl/adview/ab;->e:Lcom/applovin/impl/adview/ah;

    iput-object v1, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/adview/AppLovinAdView;

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/ab;->a()V

    return-void
.end method
