.class public interface abstract Lcom/dolphin/browser/core/ICookieManager;
.super Ljava/lang/Object;
.source "ICookieManager.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation


# virtual methods
.method public abstract acceptCookie()Z
.end method

.method public abstract getCookie(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeAllCookie()V
.end method

.method public abstract removeExpiredCookie()V
.end method

.method public abstract removeSessionCookie()V
.end method

.method public abstract setAcceptCookie(Z)V
.end method

.method public abstract setCookie(Ljava/lang/String;Ljava/lang/String;)V
.end method
