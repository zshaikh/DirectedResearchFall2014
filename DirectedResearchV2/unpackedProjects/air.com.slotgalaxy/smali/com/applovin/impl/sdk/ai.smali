.class Lcom/applovin/impl/sdk/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ag;

.field private final b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ag;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ai;->a:Lcom/applovin/impl/sdk/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/ai;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 7

    const-string v0, "format"

    iget-object v1, p0, Lcom/applovin/impl/sdk/ai;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/ag;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/applovin/impl/sdk/ag;->a(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json"

    move-object v3, v1

    move-object v2, v0

    :goto_0
    iget-object v6, p0, Lcom/applovin/impl/sdk/ai;->a:Lcom/applovin/impl/sdk/ag;

    new-instance v0, Lcom/applovin/impl/sdk/aj;

    const/16 v1, 0xc8

    iget-object v4, p0, Lcom/applovin/impl/sdk/ai;->a:Lcom/applovin/impl/sdk/ag;

    iget-object v4, v4, Lcom/applovin/impl/sdk/ag;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v5, p0, Lcom/applovin/impl/sdk/ai;->a:Lcom/applovin/impl/sdk/ag;

    invoke-static {v5}, Lcom/applovin/impl/sdk/ag;->a(Lcom/applovin/impl/sdk/ag;)Ljava/net/Socket;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/aj;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/net/Socket;)V

    sget-object v1, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v6, v0, v1}, Lcom/applovin/impl/sdk/ag;->a(Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/ag;->b(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    move-object v3, v1

    move-object v2, v0

    goto :goto_0
.end method

.method public failedToReceiveAd(I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ai;->a:Lcom/applovin/impl/sdk/ag;

    new-instance v1, Lcom/applovin/impl/sdk/aj;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ai;->a:Lcom/applovin/impl/sdk/ag;

    iget-object v2, v2, Lcom/applovin/impl/sdk/ag;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v3, p0, Lcom/applovin/impl/sdk/ai;->a:Lcom/applovin/impl/sdk/ag;

    invoke-static {v3}, Lcom/applovin/impl/sdk/ag;->a(Lcom/applovin/impl/sdk/ag;)Ljava/net/Socket;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/applovin/impl/sdk/aj;-><init>(ILcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/net/Socket;)V

    sget-object v2, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/ag;->a(Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;)V

    return-void
.end method
