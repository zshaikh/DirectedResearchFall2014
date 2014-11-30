.class Lcom/dolphin/browser/androidwebkit/GeolocationCallbackWrapper;
.super Ljava/lang/Object;
.source "GeolocationCallbackWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;


# instance fields
.field private mCallback:Landroid/webkit/GeolocationPermissions$Callback;


# direct methods
.method public constructor <init>(Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/GeolocationCallbackWrapper;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/GeolocationCallbackWrapper;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/GeolocationCallbackWrapper;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/GeolocationCallbackWrapper;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 43
    return-void
.end method
