.class public Lcom/dolphin/browser/dolphinwebkit/CookieManagerWrapper;
.super Ljava/lang/Object;
.source "CookieManagerWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/ICookieManager;


# instance fields
.field private mCookieManager:Ldolphin/webkit/CookieManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieManagerWrapper;->mCookieManager:Ldolphin/webkit/CookieManager;

    .line 33
    return-void
.end method


# virtual methods
.method public acceptCookie()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieManagerWrapper;->mCookieManager:Ldolphin/webkit/CookieManager;

    invoke-virtual {v0}, Ldolphin/webkit/CookieManager;->acceptCookie()Z

    move-result v0

    return v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieManagerWrapper;->mCookieManager:Ldolphin/webkit/CookieManager;

    invoke-virtual {v0, p1}, Ldolphin/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAllCookie()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieManagerWrapper;->mCookieManager:Ldolphin/webkit/CookieManager;

    invoke-virtual {v0}, Ldolphin/webkit/CookieManager;->removeAllCookie()V

    .line 63
    return-void
.end method

.method public removeExpiredCookie()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieManagerWrapper;->mCookieManager:Ldolphin/webkit/CookieManager;

    invoke-virtual {v0}, Ldolphin/webkit/CookieManager;->removeExpiredCookie()V

    .line 68
    return-void
.end method

.method public removeSessionCookie()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieManagerWrapper;->mCookieManager:Ldolphin/webkit/CookieManager;

    invoke-virtual {v0}, Ldolphin/webkit/CookieManager;->removeSessionCookie()V

    .line 58
    return-void
.end method

.method public setAcceptCookie(Z)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieManagerWrapper;->mCookieManager:Ldolphin/webkit/CookieManager;

    invoke-virtual {v0, p1}, Ldolphin/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 38
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CookieManagerWrapper;->mCookieManager:Ldolphin/webkit/CookieManager;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
