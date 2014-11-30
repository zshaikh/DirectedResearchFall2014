.class public final Lcom/dolphin/browser/core/GeolocationPermissions;
.super Ljava/lang/Object;
.source "GeolocationPermissions.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field private static a:Lcom/dolphin/browser/core/IGeolocationPermissions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/dolphin/browser/core/IGeolocationPermissions;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/dolphin/browser/core/GeolocationPermissions;->a:Lcom/dolphin/browser/core/IGeolocationPermissions;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->c()Lcom/dolphin/browser/core/IGeolocationPermissions;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/GeolocationPermissions;->a:Lcom/dolphin/browser/core/IGeolocationPermissions;

    .line 47
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/GeolocationPermissions;->a:Lcom/dolphin/browser/core/IGeolocationPermissions;

    return-object v0
.end method
