.class public Lcom/applovin/impl/adview/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/adview/AppLovinInterstitialAdDialog;


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/sdk/AppLovinSdk;

.field private final d:Landroid/app/Activity;

.field private volatile e:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private volatile f:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private volatile g:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private volatile h:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private volatile i:Lcom/applovin/sdk/AppLovinAd;

.field private volatile j:Z

.field private volatile k:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/adview/ah;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object p1, p0, Lcom/applovin/impl/adview/ah;->c:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/ah;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/adview/ah;->d:Landroid/app/Activity;

    sget-object v0, Lcom/applovin/impl/adview/ah;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/impl/adview/ah;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/applovin/impl/adview/ah;
    .locals 1

    sget-object v0, Lcom/applovin/impl/adview/ah;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/adview/ah;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/ah;->d:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/al;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/al;-><init>(Lcom/applovin/impl/adview/ah;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/adview/ah;->i()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/ah;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/ah;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/ah;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/ah;->a(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/ah;->d:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/ak;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/ak;-><init>(Lcom/applovin/impl/adview/ah;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/adview/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/adview/ah;->h()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/adview/ah;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ah;->e:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object v0
.end method

.method private h()V
    .locals 3

    new-instance v0, Lcom/applovin/impl/adview/ab;

    iget-object v1, p0, Lcom/applovin/impl/adview/ah;->c:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v2, p0, Lcom/applovin/impl/adview/ah;->d:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/adview/ab;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V

    invoke-virtual {v0, p0}, Lcom/applovin/impl/adview/ab;->a(Lcom/applovin/impl/adview/ah;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/ah;->i:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/ab;->a(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private i()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/applovin/impl/adview/ah;->d:Landroid/app/Activity;

    const-class v2, Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.applovin.interstitial.wrapper_id"

    iget-object v2, p0, Lcom/applovin/impl/adview/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/applovin/impl/adview/ah;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/ah;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ah;->i:Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/adview/ah;->j:Z

    return-void
.end method

.method public b()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ah;->g:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-object v0
.end method

.method public c()Lcom/applovin/sdk/AppLovinAdDisplayListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ah;->f:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-object v0
.end method

.method public d()Lcom/applovin/sdk/AppLovinAdClickListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ah;->h:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-object v0
.end method

.method public dismiss()V
    .locals 0

    return-void
.end method

.method public e()Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ah;->k:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    return-object v0
.end method

.method public f()V
    .locals 2

    sget-object v0, Lcom/applovin/impl/adview/ah;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/impl/adview/ah;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g()Z
    .locals 2

    new-instance v0, Lcom/applovin/impl/sdk/z;

    iget-object v1, p0, Lcom/applovin/impl/adview/ah;->c:Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/z;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/z;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/ah;->j:Z

    return v0
.end method

.method public setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ah;->h:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ah;->f:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ah;->e:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method public setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ah;->g:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/ah;->c:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/adview/ai;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/ai;-><init>(Lcom/applovin/impl/adview/ah;)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public showAndRender(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4

    iput-object p1, p0, Lcom/applovin/impl/adview/ah;->i:Lcom/applovin/sdk/AppLovinAd;

    instance-of v0, p1, Lcom/applovin/impl/sdk/AppLovinAdInternal;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getTarget()Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/applovin/impl/adview/ah;->k:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    const-class v0, Lcom/applovin/adview/AppLovinInterstitialActivity;

    iget-object v1, p0, Lcom/applovin/impl/adview/ah;->d:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/adview/ah;->k:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    sget-object v2, Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;->ACTIVITY_LANDSCAPE:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/ah;->k:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    sget-object v2, Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;->ACTIVITY_PORTRAIT:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/applovin/impl/adview/ah;->d:Landroid/app/Activity;

    new-instance v3, Lcom/applovin/impl/adview/aj;

    invoke-direct {v3, p0, v0, v1}, Lcom/applovin/impl/adview/aj;-><init>(Lcom/applovin/impl/adview/ah;ZZ)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;->DEFAULT:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
