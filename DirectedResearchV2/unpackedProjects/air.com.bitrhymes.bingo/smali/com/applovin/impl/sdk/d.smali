.class Lcom/applovin/impl/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/b;

.field private final b:Lcom/applovin/impl/sdk/e;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/impl/sdk/e;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/impl/sdk/e;Lcom/applovin/impl/sdk/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/impl/sdk/e;)V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 9

    const-wide/16 v4, 0x0

    const-string v8, "AppLovinAdService"

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    iget-object v0, v0, Lcom/applovin/impl/sdk/e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    iget-object v2, v2, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    iget-object v2, v2, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/b;->b(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v1, v6

    add-long/2addr v1, v4

    iput-wide v1, v3, Lcom/applovin/impl/sdk/e;->d:J

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    iput-object p1, v1, Lcom/applovin/impl/sdk/e;->c:Lcom/applovin/sdk/AppLovinAd;

    :goto_1
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    invoke-static {v2}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/impl/sdk/e;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    invoke-static {v2}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/impl/sdk/e;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    invoke-static {v3}, Lcom/applovin/impl/sdk/e;->b(Lcom/applovin/impl/sdk/e;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/applovin/impl/sdk/e;->e:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    iget-object v3, v3, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {v0, v3}, Lcom/applovin/impl/sdk/b;->c(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdLoadListener;

    :try_start_1
    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v3}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v3

    const-string v4, "AppLovinAdService"

    const-string v4, "Unable to notify listener about a newly loaded ad"

    invoke-interface {v3, v8, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v1, Lcom/applovin/impl/sdk/e;->d:J

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/applovin/impl/sdk/e;->c:Lcom/applovin/sdk/AppLovinAd;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/applovin/impl/sdk/e;->d:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdUpdateListener;

    :try_start_4
    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdUpdateListener;->adUpdated(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v2}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "AppLovinAdService"

    const-string v3, "Unable to notify listener about an updated loaded ad"

    invoke-interface {v2, v8, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    iget-object v0, v0, Lcom/applovin/impl/sdk/e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    invoke-static {v2}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/impl/sdk/e;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    invoke-static {v2}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/impl/sdk/e;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->b:Lcom/applovin/impl/sdk/e;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/applovin/impl/sdk/e;->e:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdLoadListener;

    :try_start_1
    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v2}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "AppLovinAdService"

    const-string v4, "Unable to notify listener about ad load failure"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    return-void
.end method
