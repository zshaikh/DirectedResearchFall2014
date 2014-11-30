.class Lcom/applovin/impl/adview/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:Lcom/applovin/impl/adview/ab;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ab;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/af;->b:Lcom/applovin/impl/adview/ab;

    iput-object p2, p0, Lcom/applovin/impl/adview/af;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->b:Lcom/applovin/impl/adview/ab;

    invoke-static {v0}, Lcom/applovin/impl/adview/ab;->d(Lcom/applovin/impl/adview/ab;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/af;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
