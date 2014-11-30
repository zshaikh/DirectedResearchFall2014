.class public Ldolphin/webkit/WebStorage;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ldolphin/webkit/WebStorage;
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Ldolphin/webkit/kh;->a()Ldolphin/webkit/ki;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ki;->e()Ldolphin/webkit/WebStorage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllData()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public getOrigins(Ldolphin/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    return-void
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Ldolphin/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    return-void
.end method

.method public getUsageForOrigin(Ljava/lang/String;Ldolphin/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    return-void
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method
