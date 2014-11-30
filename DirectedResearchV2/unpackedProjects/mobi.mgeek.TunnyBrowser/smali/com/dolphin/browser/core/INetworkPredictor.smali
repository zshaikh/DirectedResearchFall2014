.class public interface abstract Lcom/dolphin/browser/core/INetworkPredictor;
.super Ljava/lang/Object;
.source "INetworkPredictor.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation


# virtual methods
.method public abstract anticipateAddressBar(Ljava/lang/String;Z)V
.end method

.method public abstract cancelPrefetchWebPage(Ljava/lang/String;)V
.end method

.method public abstract isRunning()Z
.end method

.method public abstract preconnect(Ljava/lang/String;)V
.end method

.method public varargs abstract prefetchDNS([Ljava/lang/String;)V
.end method

.method public abstract prefetchWebPage(Ljava/lang/String;)V
.end method

.method public abstract save()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract updateSettings()V
.end method
