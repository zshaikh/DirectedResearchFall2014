.class public interface abstract Lcom/dolphin/browser/core/IGeolocationPermissions;
.super Ljava/lang/Object;
.source "IGeolocationPermissions.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# virtual methods
.method public abstract allow(Ljava/lang/String;)V
.end method

.method public abstract clear(Ljava/lang/String;)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract getAllowed(Ljava/lang/String;Lcom/dolphin/browser/core/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getOrigins(Lcom/dolphin/browser/core/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method
