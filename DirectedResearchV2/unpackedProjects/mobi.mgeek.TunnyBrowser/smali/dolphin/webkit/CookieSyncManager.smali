.class public final Ldolphin/webkit/CookieSyncManager;
.super Ldolphin/webkit/WebSyncManager;
.source "CookieSyncManager.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepClass;
.end annotation


# static fields
.field private static sRef:Ldolphin/webkit/CookieSyncManager;


# instance fields
.field private mLastUpdate:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    const-string v0, "CookieSyncManager"

    invoke-direct {p0, p1, v0}, Ldolphin/webkit/WebSyncManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private static checkInstanceIsCreated()V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Ldolphin/webkit/CookieSyncManager;->sRef:Ldolphin/webkit/CookieSyncManager;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CookieSyncManager::createInstance() needs to be called before CookieSyncManager::getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Ldolphin/webkit/CookieSyncManager;
    .locals 3

    .prologue
    .line 100
    const-class v1, Ldolphin/webkit/CookieSyncManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 101
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid context argument"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 104
    :cond_0
    :try_start_1
    invoke-static {p0}, Ldolphin/webkit/JniUtil;->setContext(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    sget-object v2, Ldolphin/webkit/CookieSyncManager;->sRef:Ldolphin/webkit/CookieSyncManager;

    if-nez v2, :cond_1

    .line 107
    new-instance v2, Ldolphin/webkit/CookieSyncManager;

    invoke-direct {v2, v0}, Ldolphin/webkit/CookieSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Ldolphin/webkit/CookieSyncManager;->sRef:Ldolphin/webkit/CookieSyncManager;

    .line 109
    :cond_1
    sget-object v0, Ldolphin/webkit/CookieSyncManager;->sRef:Ldolphin/webkit/CookieSyncManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getInstance()Ldolphin/webkit/CookieSyncManager;
    .locals 2

    .prologue
    .line 89
    const-class v1, Ldolphin/webkit/CookieSyncManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/CookieSyncManager;->checkInstanceIsCreated()V

    .line 90
    sget-object v0, Ldolphin/webkit/CookieSyncManager;->sRef:Ldolphin/webkit/CookieSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private syncFromRamToFlash(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/bj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 213
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/bj;

    .line 215
    iget-byte v2, v0, Ldolphin/webkit/bj;->i:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 216
    iget-byte v2, v0, Ldolphin/webkit/bj;->i:B

    if-eqz v2, :cond_1

    .line 217
    iget-object v2, p0, Ldolphin/webkit/CookieSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    iget-object v3, v0, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    iget-object v4, v0, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    iget-object v5, v0, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Ldolphin/webkit/WebViewDatabase;->deleteCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_1
    iget-byte v2, v0, Ldolphin/webkit/bj;->i:B

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 221
    iget-object v2, p0, Ldolphin/webkit/CookieSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v2, v0}, Ldolphin/webkit/WebViewDatabase;->addCookie(Ldolphin/webkit/bj;)V

    .line 222
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldolphin/webkit/CookieManager;->syncedACookie(Ldolphin/webkit/bj;)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldolphin/webkit/CookieManager;->deleteACookie(Ldolphin/webkit/bj;)V

    goto :goto_0

    .line 228
    :cond_3
    return-void
.end method


# virtual methods
.method public clearAllCookies()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Ldolphin/webkit/CookieSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/CookieSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewDatabase;->clearCookies()V

    goto :goto_0
.end method

.method clearExpiredCookies(J)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ldolphin/webkit/CookieSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/CookieSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/WebViewDatabase;->clearExpiredCookies(J)V

    goto :goto_0
.end method

.method clearSessionCookies()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ldolphin/webkit/CookieSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/CookieSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewDatabase;->clearSessionCookies()V

    goto :goto_0
.end method

.method getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;
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
    .line 121
    iget-object v0, p0, Ldolphin/webkit/CookieSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/webkit/CookieSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewDatabase;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method hasCookies()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Ldolphin/webkit/CookieSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ldolphin/webkit/CookieSyncManager;->mDataBase:Ldolphin/webkit/WebViewDatabase;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewDatabase;->hasCookies()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic resetSync()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Ldolphin/webkit/WebSyncManager;->resetSync()V

    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Ldolphin/webkit/WebSyncManager;->run()V

    return-void
.end method

.method public bridge synthetic startSync()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Ldolphin/webkit/WebSyncManager;->startSync()V

    return-void
.end method

.method public bridge synthetic stopSync()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Ldolphin/webkit/WebSyncManager;->stopSync()V

    return-void
.end method

.method public bridge synthetic sync()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Ldolphin/webkit/WebSyncManager;->sync()V

    return-void
.end method

.method protected syncFromRamToFlash()V
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ldolphin/webkit/CookieManager;->acceptCookie()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v0}, Ldolphin/webkit/CookieManager;->flushCookieStore()V

    goto :goto_0

    .line 198
    :cond_1
    iget-wide v1, p0, Ldolphin/webkit/CookieSyncManager;->mLastUpdate:J

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/CookieManager;->getUpdatedCookiesSince(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ldolphin/webkit/CookieSyncManager;->mLastUpdate:J

    .line 200
    invoke-direct {p0, v1}, Ldolphin/webkit/CookieSyncManager;->syncFromRamToFlash(Ljava/util/ArrayList;)V

    .line 202
    invoke-virtual {v0}, Ldolphin/webkit/CookieManager;->deleteLRUDomain()Ljava/util/ArrayList;

    move-result-object v0

    .line 203
    invoke-direct {p0, v0}, Ldolphin/webkit/CookieSyncManager;->syncFromRamToFlash(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
