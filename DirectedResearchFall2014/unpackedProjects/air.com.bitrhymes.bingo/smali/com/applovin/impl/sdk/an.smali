.class abstract Lcom/applovin/impl/sdk/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final d:Ljava/lang/String;

.field protected final e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field protected final f:Lcom/applovin/sdk/AppLovinLogger;

.field protected final g:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/applovin/impl/sdk/an;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/applovin/impl/sdk/an;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/an;->f:Lcom/applovin/sdk/AppLovinLogger;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/an;->g:Landroid/content/Context;

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/an;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/al;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/al;->a(Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;)V

    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/an;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Lcom/applovin/impl/sdk/n;
    .locals 2

    new-instance v0, Lcom/applovin/impl/sdk/n;

    iget-object v1, p0, Lcom/applovin/impl/sdk/an;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/n;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-object v0
.end method
