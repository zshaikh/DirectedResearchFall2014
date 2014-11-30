.class Lcom/applovin/impl/sdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/sdk/AppLovinLogger;

.field private final c:Lcom/applovin/impl/sdk/u;

.field private final d:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/sdk/AppLovinLogger;

    new-instance v0, Lcom/applovin/impl/sdk/u;

    invoke-direct {v0, p1}, Lcom/applovin/impl/sdk/u;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/b;->c:Lcom/applovin/impl/sdk/u;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/e;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/e;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/e;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/e;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/e;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/e;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/e;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/e;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/b;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/applovin/sdk/AppLovinAdSize;)Z
    .locals 2

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/v;->D:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/v;->F:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/v;->H:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/b;->b(Lcom/applovin/sdk/AppLovinAdSize;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Lcom/applovin/sdk/AppLovinAdSize;)J
    .locals 2

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/v;->E:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/v;->G:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/v;->I:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/b;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/b;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/b;->d(Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method private c(Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 6

    new-instance v1, Lcom/applovin/impl/sdk/d;

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/impl/sdk/e;Lcom/applovin/impl/sdk/c;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->c:Lcom/applovin/impl/sdk/u;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/u;->c(Lcom/applovin/sdk/AppLovinAdSize;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "AppLovinAdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using pre-loaded ad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "for size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->c:Lcom/applovin/impl/sdk/u;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/u;->a(Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/ae;

    iget-object v2, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/impl/sdk/ae;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/al;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/al;->a(Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/b;->c(Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method private d(Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/b;->b(Lcom/applovin/sdk/AppLovinAdSize;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/applovin/impl/sdk/f;

    invoke-direct {v2, p0, p1}, Lcom/applovin/impl/sdk/f;-><init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/al;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/am;

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x2

    add-long/2addr v0, v7

    mul-long/2addr v0, v5

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/applovin/impl/sdk/al;->a(Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;J)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/b;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;)V
    .locals 1

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/b;->addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method public addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad listener specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/e;

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/applovin/impl/sdk/e;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {v0}, Lcom/applovin/impl/sdk/e;->b(Lcom/applovin/impl/sdk/e;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/applovin/impl/sdk/e;->b(Lcom/applovin/impl/sdk/e;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "AppLovinAdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added update listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/applovin/impl/sdk/f;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/sdk/f;-><init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/al;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/al;->a(Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hasPreloadedAd(Lcom/applovin/sdk/AppLovinAdSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->c:Lcom/applovin/impl/sdk/u;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/u;->b(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    return v0
.end method

.method public loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 8

    const/4 v7, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad size specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/e;

    iget-object v2, v0, Lcom/applovin/impl/sdk/e;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/applovin/impl/sdk/e;->d:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    move v3, v7

    :goto_0
    iget-object v4, v0, Lcom/applovin/impl/sdk/e;->c:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    iget-object v0, v0, Lcom/applovin/impl/sdk/e;->c:Lcom/applovin/sdk/AppLovinAd;

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {p2, v0}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "AppLovinAdService"

    const-string v5, "Loading next ad..."

    invoke-interface {v3, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/impl/sdk/e;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v0, Lcom/applovin/impl/sdk/e;->e:Z

    if-nez v3, :cond_5

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/applovin/impl/sdk/e;->e:Z

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/b;->c(Lcom/applovin/sdk/AppLovinAdSize;)V

    :cond_5
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public loadNextAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad ID specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/ad;

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, p2, v1}, Lcom/applovin/impl/sdk/ad;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/al;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/al;->a(Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;)V

    return-void
.end method

.method public preloadAd(Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->c:Lcom/applovin/impl/sdk/u;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/u;->a(Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method public removeAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/e;

    iget-object v1, v0, Lcom/applovin/impl/sdk/e;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/applovin/impl/sdk/e;->b(Lcom/applovin/impl/sdk/e;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed update listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public trackAdClick(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/au;

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/au;-><init>(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/al;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/am;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/applovin/impl/sdk/al;->a(Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;J)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/sdk/e;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/applovin/impl/sdk/e;->c:Lcom/applovin/sdk/AppLovinAd;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/applovin/impl/sdk/e;->d:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
