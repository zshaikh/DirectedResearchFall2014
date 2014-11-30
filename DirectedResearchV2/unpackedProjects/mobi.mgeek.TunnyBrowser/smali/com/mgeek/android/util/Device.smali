.class public Lcom/mgeek/android/util/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FROYO:I = 0x8
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final JB_MR2:I = 0x12
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/dolphin/browser/util/Device;->getVersion()I

    move-result v0

    return v0
.end method

.method public static hasMenuKey(Landroid/content/Context;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 36
    invoke-static {p0}, Lcom/dolphin/browser/util/Device;->hasMenuKey(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isAboveJellyBeanMR2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/dolphin/browser/util/Device;->isAboveJellyBeanMR2()Z

    move-result v0

    return v0
.end method

.method public static isFroyoOrHigher()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Lcom/dolphin/browser/util/Device;->isFroyoOrHigher()Z

    move-result v0

    return v0
.end method

.method public static isGingerBreadOrHigher()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lcom/dolphin/browser/util/Device;->isGingerBreadOrHigher()Z

    move-result v0

    return v0
.end method

.method public static supportMultiTouch(Landroid/content/Context;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 47
    invoke-static {p0}, Lcom/dolphin/browser/util/Device;->supportMultiTouch(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
