.class public Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinEventService;


# static fields
.field public static final KEY_LAST_SESSION_TS:Ljava/lang/String; = "ALEventServicePauseTS"

.field public static final TAG:Ljava/lang/String; = "EventServiceImpl"


# instance fields
.field private a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private b:Lcom/applovin/sdk/AppLovinLogger;

.field private c:Ljava/lang/Object;

.field private d:Lcom/applovin/impl/sdk/s;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getEventManager()Lcom/applovin/impl/sdk/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->d:Lcom/applovin/impl/sdk/s;

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "EventServiceImpl"

    const-string v2, "Starting new user session..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->d:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->e()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->b(J)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->d:Lcom/applovin/impl/sdk/s;

    const-string v3, "start"

    invoke-static {v3, v0, v1}, Lcom/applovin/impl/sdk/AppLovinEvent;->a(Ljava/lang/String;J)Lcom/applovin/impl/sdk/AppLovinEvent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/s;->a(Lcom/applovin/impl/sdk/AppLovinEvent;)V

    return-void
.end method

.method private a(J)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "EventServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing old session from ts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->d:Lcom/applovin/impl/sdk/s;

    const-string v2, "end"

    invoke-static {v2, p1, p2}, Lcom/applovin/impl/sdk/AppLovinEvent;->a(Ljava/lang/String;J)Lcom/applovin/impl/sdk/AppLovinEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/s;->a(Lcom/applovin/impl/sdk/AppLovinEvent;)V

    const-wide/16 v1, -0x1

    invoke-direct {p0, v1, v2}, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->b(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private b()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/y;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private b(J)V
    .locals 2

    invoke-direct {p0}, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ALEventServicePauseTS"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public trackRevenueEvent(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->d:Lcom/applovin/impl/sdk/s;

    invoke-static {p1, p2, p3, p4}, Lcom/applovin/impl/sdk/AppLovinEvent;->a(Ljava/lang/String;DLjava/lang/String;)Lcom/applovin/impl/sdk/AppLovinEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/s;->a(Lcom/applovin/impl/sdk/AppLovinEvent;)V

    return-void
.end method

.method public trackSessionEnd()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->a(J)V

    return-void
.end method

.method public trackSessionPause()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "EventServiceImpl"

    const-string v2, "Pausing current session."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->b(J)V

    return-void
.end method

.method public trackSessionStart()V
    .locals 8

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "ALEventServicePauseTS"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v4, Lcom/applovin/impl/sdk/v;->Q:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->a(J)V

    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->a()V

    :goto_1
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "EventServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resuming old session from ts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->b(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uploadEvents()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEventServiceImpl;->d:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->c()V

    return-void
.end method
