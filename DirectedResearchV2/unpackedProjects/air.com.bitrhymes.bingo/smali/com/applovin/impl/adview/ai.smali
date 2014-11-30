.class Lcom/applovin/impl/adview/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/ah;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ai;->a:Lcom/applovin/impl/adview/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ai;->a:Lcom/applovin/impl/adview/ah;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/ah;->a(Lcom/applovin/impl/adview/ah;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ai;->a:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/ah;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ai;->a:Lcom/applovin/impl/adview/ah;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/ah;->a(Lcom/applovin/impl/adview/ah;I)V

    return-void
.end method
