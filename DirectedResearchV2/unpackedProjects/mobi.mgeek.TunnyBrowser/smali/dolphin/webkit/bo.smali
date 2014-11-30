.class Ldolphin/webkit/bo;
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
    .line 531
    iput-object p1, p0, Ldolphin/webkit/bo;->a:Ldolphin/webkit/CookieManagerClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 533
    iget-object v1, p0, Ldolphin/webkit/bo;->a:Ldolphin/webkit/CookieManagerClassic;

    monitor-enter v1

    .line 534
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 535
    iget-object v0, p0, Ldolphin/webkit/bo;->a:Ldolphin/webkit/CookieManagerClassic;

    invoke-static {v0}, Ldolphin/webkit/CookieManagerClassic;->b(Ldolphin/webkit/CookieManagerClassic;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 536
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 537
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 539
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 540
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/bj;

    .line 544
    iget-wide v6, v0, Ldolphin/webkit/bj;->e:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    iget-wide v6, v0, Ldolphin/webkit/bj;->e:J

    cmp-long v0, v6, v2

    if-gez v0, :cond_1

    .line 545
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 549
    :cond_2
    :try_start_1
    invoke-static {}, Ldolphin/webkit/CookieSyncManager;->getInstance()Ldolphin/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ldolphin/webkit/CookieSyncManager;->clearExpiredCookies(J)V

    .line 550
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    return-void
.end method
