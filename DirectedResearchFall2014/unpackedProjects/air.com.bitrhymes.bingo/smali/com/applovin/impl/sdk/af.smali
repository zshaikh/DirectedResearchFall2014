.class Lcom/applovin/impl/sdk/af;
.super Lcom/applovin/impl/sdk/as;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ae;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ae;Ljava/lang/String;Lcom/applovin/impl/sdk/x;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/af;->a:Lcom/applovin/impl/sdk/ae;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/as;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/x;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/af;->a:Lcom/applovin/impl/sdk/ae;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ae;->a(I)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/sdk/l;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/af;->a:Lcom/applovin/impl/sdk/ae;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ae;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/k;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/af;->a:Lcom/applovin/impl/sdk/ae;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ae;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/af;->a:Lcom/applovin/impl/sdk/ae;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/sdk/ae;->a(I)V

    goto :goto_0
.end method
