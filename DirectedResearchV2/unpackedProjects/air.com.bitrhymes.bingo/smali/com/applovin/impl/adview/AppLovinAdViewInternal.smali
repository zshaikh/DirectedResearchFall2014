.class public Lcom/applovin/impl/adview/AppLovinAdViewInternal;
.super Lcom/applovin/adview/AppLovinAdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/adview/AppLovinAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/adview/AppLovinAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getAdViewControllerJsInterface()Lcom/applovin/impl/adview/AdViewControllerJsInterface;
    .locals 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AppLovinAdViewInternal;->controller:Lcom/applovin/adview/AdViewController;

    check-cast p0, Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a()Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    move-result-object v0

    return-object v0
.end method
