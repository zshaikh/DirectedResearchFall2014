.class abstract Lcom/applovin/impl/sdk/as;
.super Lcom/applovin/impl/sdk/an;

# interfaces
.implements Lcom/applovin/impl/sdk/l;


# instance fields
.field private a:I

.field private final b:Lcom/applovin/impl/sdk/l;

.field private c:Lcom/applovin/impl/sdk/x;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/an;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/as;->c:Lcom/applovin/impl/sdk/x;

    iput p2, p0, Lcom/applovin/impl/sdk/as;->a:I

    new-instance v0, Lcom/applovin/impl/sdk/at;

    invoke-direct {v0, p0, p3, p1}, Lcom/applovin/impl/sdk/at;-><init>(Lcom/applovin/impl/sdk/as;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/as;->b:Lcom/applovin/impl/sdk/l;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/x;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-virtual {p3, p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/applovin/impl/sdk/as;-><init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/as;)I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/as;->a:I

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/as;I)I
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/as;->a:I

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/as;I)I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/as;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/applovin/impl/sdk/as;->a:I

    return v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/as;->c:Lcom/applovin/impl/sdk/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/as;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/as;->c:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/as;->c:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/x;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->a(Lcom/applovin/impl/sdk/x;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/y;->b()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/as;->b()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/sdk/l;)V
.end method

.method public a(Lcom/applovin/impl/sdk/x;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/as;->c:Lcom/applovin/impl/sdk/x;

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/as;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getConnectionManager()Lcom/applovin/impl/sdk/k;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/as;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/as;->a(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method
