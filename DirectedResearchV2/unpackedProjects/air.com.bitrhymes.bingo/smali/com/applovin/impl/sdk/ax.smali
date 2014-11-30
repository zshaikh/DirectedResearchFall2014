.class Lcom/applovin/impl/sdk/ax;
.super Lcom/applovin/impl/sdk/av;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/av;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/ax;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ax;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected c()V
    .locals 0

    return-void
.end method
