.class Ldolphin/webkit/bm;
.super Ljava/lang/Object;
.source "CookieManagerClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/webkit/CookieManagerClassic;


# direct methods
.method constructor <init>(Ldolphin/webkit/CookieManagerClassic;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Ldolphin/webkit/bm;->a:Ldolphin/webkit/CookieManagerClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 466
    iget-object v1, p0, Ldolphin/webkit/bm;->a:Ldolphin/webkit/CookieManagerClassic;

    monitor-enter v1

    .line 467
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/bm;->a:Ldolphin/webkit/CookieManagerClassic;

    invoke-static {v0}, Ldolphin/webkit/CookieManagerClassic;->b(Ldolphin/webkit/CookieManagerClassic;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 468
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 469
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 471
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 472
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/bj;

    .line 474
    iget-wide v4, v0, Ldolphin/webkit/bj;->e:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 475
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 479
    :cond_2
    :try_start_1
    invoke-static {}, Ldolphin/webkit/CookieSyncManager;->getInstance()Ldolphin/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/CookieSyncManager;->clearSessionCookies()V

    .line 480
    iget-object v0, p0, Ldolphin/webkit/bm;->a:Ldolphin/webkit/CookieManagerClassic;

    invoke-static {v0}, Ldolphin/webkit/CookieManagerClassic;->a(Ldolphin/webkit/CookieManagerClassic;)V

    .line 481
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    return-void
.end method
