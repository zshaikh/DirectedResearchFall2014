.class public Lcom/applovin/impl/sdk/z;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/applovin/impl/sdk/y;


# direct methods
.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object v1, v0

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/z;->a:Lcom/applovin/impl/sdk/y;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/z;->a:Lcom/applovin/impl/sdk/y;

    sget-object v1, Lcom/applovin/impl/sdk/v;->S:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/y;->a(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method
