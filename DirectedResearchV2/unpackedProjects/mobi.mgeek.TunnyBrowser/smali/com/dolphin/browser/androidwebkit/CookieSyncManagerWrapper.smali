.class public Lcom/dolphin/browser/androidwebkit/CookieSyncManagerWrapper;
.super Ljava/lang/Object;
.source "CookieSyncManagerWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/ICookieSyncManager;


# static fields
.field private static sClearAllCookiesMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mCookieSyncManager:Landroid/webkit/CookieSyncManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/CookieSyncManagerWrapper;->mCookieSyncManager:Landroid/webkit/CookieSyncManager;

    .line 40
    return-void
.end method


# virtual methods
.method public clearAllCookies()V
    .locals 3

    .prologue
    .line 65
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/CookieSyncManagerWrapper;->sClearAllCookiesMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 66
    const-class v0, Landroid/webkit/CookieSyncManager;

    const-string v1, "clearAllCookies"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/CookieSyncManagerWrapper;->sClearAllCookiesMethod:Ljava/lang/reflect/Method;

    .line 67
    sget-object v0, Lcom/dolphin/browser/androidwebkit/CookieSyncManagerWrapper;->sClearAllCookiesMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    :cond_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/CookieSyncManagerWrapper;->sClearAllCookiesMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/CookieSyncManagerWrapper;->mCookieSyncManager:Landroid/webkit/CookieSyncManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetSync()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/CookieSyncManagerWrapper;->mCookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->resetSync()V

    .line 50
    return-void
.end method

.method public startSync()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/CookieSyncManagerWrapper;->mCookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 55
    return-void
.end method

.method public stopSync()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/CookieSyncManagerWrapper;->mCookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 60
    return-void
.end method

.method public sync()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/CookieSyncManagerWrapper;->mCookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 45
    return-void
.end method
