.class public interface abstract Lcom/dolphin/browser/core/IHttpAuthHandler;
.super Ljava/lang/Object;
.source "IHttpAuthHandler.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getHandler()Ljava/lang/Object;
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract proceed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract useHttpAuthUsernamePassword()Z
.end method
