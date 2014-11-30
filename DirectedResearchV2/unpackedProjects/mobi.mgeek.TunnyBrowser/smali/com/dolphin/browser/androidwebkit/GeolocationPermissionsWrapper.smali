.class Lcom/dolphin/browser/androidwebkit/GeolocationPermissionsWrapper;
.super Ljava/lang/Object;
.source "GeolocationPermissionsWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IGeolocationPermissions;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# instance fields
.field private mGeolocationPermissions:Landroid/webkit/GeolocationPermissions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/GeolocationPermissionsWrapper;->mGeolocationPermissions:Landroid/webkit/GeolocationPermissions;

    .line 36
    return-void
.end method


# virtual methods
.method public allow(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/GeolocationPermissionsWrapper;->mGeolocationPermissions:Landroid/webkit/GeolocationPermissions;

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->allow(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/GeolocationPermissionsWrapper;->mGeolocationPermissions:Landroid/webkit/GeolocationPermissions;

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->clear(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/GeolocationPermissionsWrapper;->mGeolocationPermissions:Landroid/webkit/GeolocationPermissions;

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllowed(Ljava/lang/String;Lcom/dolphin/browser/core/ValueCallback;)V
    .locals 2
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

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/GeolocationPermissionsWrapper;->mGeolocationPermissions:Landroid/webkit/GeolocationPermissions;

    new-instance v1, Lcom/dolphin/browser/androidwebkit/AndroidValueCallbackWrapper;

    invoke-direct {v1, p2}, Lcom/dolphin/browser/androidwebkit/AndroidValueCallbackWrapper;-><init>(Lcom/dolphin/browser/core/ValueCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 46
    return-void
.end method

.method public getOrigins(Lcom/dolphin/browser/core/ValueCallback;)V
    .locals 2
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

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/GeolocationPermissionsWrapper;->mGeolocationPermissions:Landroid/webkit/GeolocationPermissions;

    new-instance v1, Lcom/dolphin/browser/androidwebkit/AndroidValueCallbackWrapper;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/androidwebkit/AndroidValueCallbackWrapper;-><init>(Lcom/dolphin/browser/core/ValueCallback;)V

    invoke-virtual {v0, v1}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 41
    return-void
.end method
