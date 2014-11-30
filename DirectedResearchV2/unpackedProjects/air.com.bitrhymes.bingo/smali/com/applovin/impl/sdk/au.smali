.class Lcom/applovin/impl/sdk/au;
.super Lcom/applovin/impl/sdk/as;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAd;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    const-string v0, "TrackClick"

    sget-object v1, Lcom/applovin/impl/sdk/v;->k:Lcom/applovin/impl/sdk/x;

    invoke-direct {p0, v0, v1, p2}, Lcom/applovin/impl/sdk/as;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/x;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No clicked ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/au;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/aa;

    move-result-object v0

    const-string v1, "clk_req"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/aa;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/au;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/m;->b(ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/sdk/l;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/au;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinAd;->getClickTrackerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/k;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/au;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/aa;

    move-result-object v0

    const-string v1, "clk_trk"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/aa;->a(Ljava/lang/String;)V

    return-void
.end method
