.class public final Lcom/dolphin/browser/core/CookieSyncManager;
.super Ljava/lang/Object;
.source "CookieSyncManager.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field private static a:Lcom/dolphin/browser/core/CookieSyncManager;


# instance fields
.field private b:Lcom/dolphin/browser/core/ICookieSyncManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/dolphin/browser/core/WebViewFactory;->a(Landroid/content/Context;)Lcom/dolphin/browser/core/ICookieSyncManager;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 97
    const-string v0, "CookieSyncManager create failed, delete webview databases and try again"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/dolphin/browser/core/CookieSyncManager;->a()V

    .line 99
    invoke-static {p1}, Lcom/dolphin/browser/core/WebViewFactory;->a(Landroid/content/Context;)Lcom/dolphin/browser/core/ICookieSyncManager;

    move-result-object v0

    .line 101
    :cond_0
    if-nez v0, :cond_1

    .line 102
    const-string v0, "CookieSyncManager create failed!!!"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CookieSyncManager create failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iput-object v0, p0, Lcom/dolphin/browser/core/CookieSyncManager;->b:Lcom/dolphin/browser/core/ICookieSyncManager;

    .line 107
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 145
    :try_start_0
    const-string v1, "webview.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 146
    const-string v2, "webviewCache.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/dolphin/browser/core/CookieSyncManager;
    .locals 3

    .prologue
    .line 86
    const-class v1, Lcom/dolphin/browser/core/CookieSyncManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/CookieSyncManager;->a:Lcom/dolphin/browser/core/CookieSyncManager;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/dolphin/browser/core/CookieSyncManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/core/CookieSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/core/CookieSyncManager;->a:Lcom/dolphin/browser/core/CookieSyncManager;

    .line 89
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/CookieSyncManager;->a:Lcom/dolphin/browser/core/CookieSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/dolphin/browser/core/CookieSyncManager;
    .locals 2

    .prologue
    .line 71
    const-class v1, Lcom/dolphin/browser/core/CookieSyncManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/dolphin/browser/core/CookieSyncManager;

    .line 72
    sget-object v0, Lcom/dolphin/browser/core/CookieSyncManager;->a:Lcom/dolphin/browser/core/CookieSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/dolphin/browser/core/CookieSyncManager;->a:Lcom/dolphin/browser/core/CookieSyncManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearAllCookies(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/core/CookieSyncManager;->b:Lcom/dolphin/browser/core/ICookieSyncManager;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ICookieSyncManager;->clearAllCookies()V

    .line 140
    return-void
.end method

.method public resetSync()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/core/CookieSyncManager;->b:Lcom/dolphin/browser/core/ICookieSyncManager;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ICookieSyncManager;->resetSync()V

    .line 121
    return-void
.end method

.method public startSync()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/core/CookieSyncManager;->b:Lcom/dolphin/browser/core/ICookieSyncManager;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ICookieSyncManager;->startSync()V

    .line 128
    return-void
.end method

.method public stopSync()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/core/CookieSyncManager;->b:Lcom/dolphin/browser/core/ICookieSyncManager;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ICookieSyncManager;->stopSync()V

    .line 136
    return-void
.end method

.method public sync()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/core/CookieSyncManager;->b:Lcom/dolphin/browser/core/ICookieSyncManager;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ICookieSyncManager;->sync()V

    .line 114
    return-void
.end method
