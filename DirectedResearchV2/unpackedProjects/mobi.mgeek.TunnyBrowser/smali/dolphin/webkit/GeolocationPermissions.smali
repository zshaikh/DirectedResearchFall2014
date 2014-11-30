.class public Ldolphin/webkit/GeolocationPermissions;
.super Ljava/lang/Object;
.source "GeolocationPermissions.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ldolphin/webkit/GeolocationPermissions;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Ldolphin/webkit/kh;->a()Ldolphin/webkit/ki;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ki;->b()Ldolphin/webkit/GeolocationPermissions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allow(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public clearAll()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public getAllowed(Ljava/lang/String;Ldolphin/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    return-void
.end method

.method public getOrigins(Ldolphin/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    return-void
.end method
