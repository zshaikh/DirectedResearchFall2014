.class public Ldolphin/webkit/CookieManager;
.super Ljava/lang/Object;
.source "CookieManager.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field protected static final COMPARATOR:Ldolphin/webkit/bk;

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final PATH_DELIM:C = '/'

.field private static final PERIOD:C = '.'


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ldolphin/webkit/bk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldolphin/webkit/bk;-><init>(Ldolphin/webkit/bi;)V

    sput-object v0, Ldolphin/webkit/CookieManager;->COMPARATOR:Ldolphin/webkit/bk;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method public static allowFileSchemeCookies()Z
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/CookieManager;->allowFileSchemeCookiesImpl()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Ldolphin/webkit/CookieManager;
    .locals 2

    .prologue
    .line 190
    const-class v1, Ldolphin/webkit/CookieManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/kh;->a()Ldolphin/webkit/ki;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ki;->c()Ldolphin/webkit/CookieManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setAcceptFileSchemeCookies(Z)V
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldolphin/webkit/CookieManager;->setAcceptFileSchemeCookiesImpl(Z)V

    .line 349
    return-void
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .locals 1

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected allowFileSchemeCookiesImpl()Z
    .locals 1

    .prologue
    .line 333
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method deleteACookie(Ldolphin/webkit/bj;)V
    .locals 1

    .prologue
    .line 365
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method deleteLRUDomain()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/bj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method protected flushCookieStore()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getCookie(Ldolphin/net/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public getCookie(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method getUpdatedCookiesSince(J)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/bj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized hasCookies()Z
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasCookies(Z)Z
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllCookie()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public removeExpiredCookie()V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public removeSessionCookie()V
    .locals 1

    .prologue
    .line 270
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .locals 1

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setAcceptFileSchemeCookiesImpl(Z)V
    .locals 1

    .prologue
    .line 357
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method syncedACookie(Ldolphin/webkit/bj;)V
    .locals 1

    .prologue
    .line 369
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method
