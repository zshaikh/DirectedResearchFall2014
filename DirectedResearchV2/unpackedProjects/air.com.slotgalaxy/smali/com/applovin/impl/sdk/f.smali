.class Lcom/applovin/impl/sdk/f;
.super Lcom/applovin/impl/sdk/an;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/b;

.field private final b:Lcom/applovin/sdk/AppLovinAdSize;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/b;

    const-string v0, "UpdateAdTask"

    invoke-static {p1}, Lcom/applovin/impl/sdk/b;->b(Lcom/applovin/impl/sdk/b;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/an;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinAdSize;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/b;->c(Lcom/applovin/impl/sdk/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/e;

    iget-object v1, v0, Lcom/applovin/impl/sdk/e;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/b;

    iget-object v3, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v3}, Lcom/applovin/impl/sdk/b;->d(Lcom/applovin/impl/sdk/b;)Z

    move-result v3

    invoke-static {v0}, Lcom/applovin/impl/sdk/e;->b(Lcom/applovin/impl/sdk/e;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v9

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/applovin/impl/sdk/e;->d:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    move v5, v9

    :goto_1
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    iget-boolean v2, v0, Lcom/applovin/impl/sdk/e;->e:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/applovin/impl/sdk/e;->e:Z

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/b;

    iget-object v2, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/b;->d(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    move v4, v10

    goto :goto_0

    :cond_2
    move v5, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
