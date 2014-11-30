.class public Lcom/applovin/impl/sdk/AppLovinAdInternal;
.super Lcom/applovin/sdk/AppLovinAd;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/applovin/sdk/AppLovinAd;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p6, p0, Lcom/applovin/impl/sdk/AppLovinAdInternal;->a:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    return-void
.end method


# virtual methods
.method public getTarget()Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdInternal;->a:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    return-object v0
.end method
