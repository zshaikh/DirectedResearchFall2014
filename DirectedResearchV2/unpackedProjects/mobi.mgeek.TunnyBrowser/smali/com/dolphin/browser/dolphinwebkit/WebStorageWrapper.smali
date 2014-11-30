.class Lcom/dolphin/browser/dolphinwebkit/WebStorageWrapper;
.super Ljava/lang/Object;
.source "WebStorageWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebStorage;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# instance fields
.field private final mStorage:Ldolphin/webkit/WebStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ldolphin/webkit/WebStorage;->getInstance()Ldolphin/webkit/WebStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebStorageWrapper;->mStorage:Ldolphin/webkit/WebStorage;

    .line 34
    return-void
.end method


# virtual methods
.method public deleteAllData()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebStorageWrapper;->mStorage:Ldolphin/webkit/WebStorage;

    invoke-virtual {v0}, Ldolphin/webkit/WebStorage;->deleteAllData()V

    .line 64
    return-void
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebStorageWrapper;->mStorage:Ldolphin/webkit/WebStorage;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebStorage;->deleteOrigin(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public getOrigins(Lcom/dolphin/browser/core/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebStorageWrapper;->mStorage:Ldolphin/webkit/WebStorage;

    new-instance v1, Lcom/dolphin/browser/dolphinwebkit/AndroidValueCallbackWrapper;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/dolphinwebkit/AndroidValueCallbackWrapper;-><init>(Lcom/dolphin/browser/core/ValueCallback;)V

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebStorage;->getOrigins(Ldolphin/webkit/ValueCallback;)V

    .line 39
    return-void
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Lcom/dolphin/browser/core/ValueCallback;)V
    .locals 2
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

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebStorageWrapper;->mStorage:Ldolphin/webkit/WebStorage;

    new-instance v1, Lcom/dolphin/browser/dolphinwebkit/AndroidValueCallbackWrapper;

    invoke-direct {v1, p2}, Lcom/dolphin/browser/dolphinwebkit/AndroidValueCallbackWrapper;-><init>(Lcom/dolphin/browser/core/ValueCallback;)V

    invoke-virtual {v0, p1, v1}, Ldolphin/webkit/WebStorage;->getQuotaForOrigin(Ljava/lang/String;Ldolphin/webkit/ValueCallback;)V

    .line 49
    return-void
.end method

.method public getUsageForOrigin(Ljava/lang/String;Lcom/dolphin/browser/core/ValueCallback;)V
    .locals 2
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

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebStorageWrapper;->mStorage:Ldolphin/webkit/WebStorage;

    new-instance v1, Lcom/dolphin/browser/dolphinwebkit/AndroidValueCallbackWrapper;

    invoke-direct {v1, p2}, Lcom/dolphin/browser/dolphinwebkit/AndroidValueCallbackWrapper;-><init>(Lcom/dolphin/browser/core/ValueCallback;)V

    invoke-virtual {v0, p1, v1}, Ldolphin/webkit/WebStorage;->getUsageForOrigin(Ljava/lang/String;Ldolphin/webkit/ValueCallback;)V

    .line 44
    return-void
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebStorageWrapper;->mStorage:Ldolphin/webkit/WebStorage;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/webkit/WebStorage;->setQuotaForOrigin(Ljava/lang/String;J)V

    .line 54
    return-void
.end method
