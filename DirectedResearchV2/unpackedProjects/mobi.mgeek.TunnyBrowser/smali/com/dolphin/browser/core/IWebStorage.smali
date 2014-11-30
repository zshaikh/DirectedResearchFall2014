.class public interface abstract Lcom/dolphin/browser/core/IWebStorage;
.super Ljava/lang/Object;
.source "IWebStorage.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# virtual methods
.method public abstract deleteAllData()V
.end method

.method public abstract deleteOrigin(Ljava/lang/String;)V
.end method

.method public abstract getOrigins(Lcom/dolphin/browser/core/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getQuotaForOrigin(Ljava/lang/String;Lcom/dolphin/browser/core/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUsageForOrigin(Ljava/lang/String;Lcom/dolphin/browser/core/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setQuotaForOrigin(Ljava/lang/String;J)V
.end method
