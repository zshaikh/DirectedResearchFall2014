.class public Lcom/dolphin/browser/dolphinwebkit/CookieSyncManagerWrapper;
.super Ljava/lang/Object;
.source "CookieSyncManagerWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/ICookieSyncManager;


# instance fields
.field private mCookieSyncManager:Ldolphin/webkit/CookieSyncManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Ldolphin/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Ldolphin/webkit/CookieSyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieSyncManagerWrapper;->mCookieSyncManager:Ldolphin/webkit/CookieSyncManager;

    .line 36
    return-void
.end method


# virtual methods
.method public clearAllCookies()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieSyncManagerWrapper;->mCookieSyncManager:Ldolphin/webkit/CookieSyncManager;

    invoke-virtual {v0}, Ldolphin/webkit/CookieSyncManager;->clearAllCookies()V

    .line 61
    return-void
.end method

.method public resetSync()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieSyncManagerWrapper;->mCookieSyncManager:Ldolphin/webkit/CookieSyncManager;

    invoke-virtual {v0}, Ldolphin/webkit/CookieSyncManager;->resetSync()V

    .line 46
    return-void
.end method

.method public startSync()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieSyncManagerWrapper;->mCookieSyncManager:Ldolphin/webkit/CookieSyncManager;

    invoke-virtual {v0}, Ldolphin/webkit/CookieSyncManager;->startSync()V

    .line 51
    return-void
.end method

.method public stopSync()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieSyncManagerWrapper;->mCookieSyncManager:Ldolphin/webkit/CookieSyncManager;

    invoke-virtual {v0}, Ldolphin/webkit/CookieSyncManager;->stopSync()V

    .line 56
    return-void
.end method

.method public sync()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieSyncManagerWrapper;->mCookieSyncManager:Ldolphin/webkit/CookieSyncManager;

    invoke-virtual {v0}, Ldolphin/webkit/CookieSyncManager;->sync()V

    .line 41
    return-void
.end method
