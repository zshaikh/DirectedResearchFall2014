.class Lcom/applovin/impl/sdk/ac;
.super Lcom/applovin/impl/sdk/as;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/util/Collection;

.field final synthetic c:Lcom/applovin/impl/sdk/ab;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ab;Ljava/lang/String;Lcom/applovin/impl/sdk/x;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lorg/json/JSONObject;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ac;->c:Lcom/applovin/impl/sdk/ab;

    iput-object p5, p0, Lcom/applovin/impl/sdk/ac;->a:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/applovin/impl/sdk/ac;->b:Ljava/util/Collection;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/as;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/x;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ac;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/m;->a(ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/sdk/l;)V
    .locals 2

    const-string v0, "device"

    iget-object v1, p0, Lcom/applovin/impl/sdk/ac;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ac;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/k;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ac;->c:Lcom/applovin/impl/sdk/ab;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ac;->b:Ljava/util/Collection;

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/ab;->a(Lorg/json/JSONObject;Ljava/util/Collection;)V

    return-void
.end method
