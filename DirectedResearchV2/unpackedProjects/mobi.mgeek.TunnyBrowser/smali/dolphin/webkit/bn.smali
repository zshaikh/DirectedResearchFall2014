.class Ldolphin/webkit/bn;
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
    .line 494
    iput-object p1, p0, Ldolphin/webkit/bn;->a:Ldolphin/webkit/CookieManagerClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 496
    iget-object v1, p0, Ldolphin/webkit/bn;->a:Ldolphin/webkit/CookieManagerClassic;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/bn;->a:Ldolphin/webkit/CookieManagerClassic;

    new-instance v2, Ljava/util/LinkedHashMap;

    const/16 v3, 0xc8

    const/high16 v4, 0x3f400000

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0, v2}, Ldolphin/webkit/CookieManagerClassic;->a(Ldolphin/webkit/CookieManagerClassic;Ljava/util/Map;)Ljava/util/Map;

    .line 499
    invoke-static {}, Ldolphin/webkit/CookieSyncManager;->getInstance()Ldolphin/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/CookieSyncManager;->clearAllCookies()V

    .line 500
    monitor-exit v1

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
