.class public Ldolphin/webkit/WebViewDatabase;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "webviewdatabase"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Ldolphin/webkit/WebViewDatabase;
    .locals 2

    .prologue
    .line 48
    const-class v1, Ldolphin/webkit/WebViewDatabase;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/kh;->a()Ldolphin/webkit/ki;

    move-result-object v0

    invoke-interface {v0, p0}, Ldolphin/webkit/ki;->a(Landroid/content/Context;)Ldolphin/webkit/WebViewDatabase;
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


# virtual methods
.method addCookie(Ldolphin/webkit/bj;)V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public clearCookies()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method clearExpiredCookies(J)V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public clearHttpAuthUsernamePassword()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public clearSessionCookies()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public clearUsernamePassword()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method deleteCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/bj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public hasCookies()Z
    .locals 1

    .prologue
    .line 107
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public hasFormData()Z
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public hasUsernamePassword()Z
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method
