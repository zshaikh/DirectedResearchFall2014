.class public final Lcom/mgeek/android/util/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DENSITY:F

.field public static final DEVICE_10INCH:I = 0x1

.field public static final DEVICE_7INCH:I = 0x0

.field public static final DEVICE_BELOW_5_INCH:I = -0x1

.field public static final DEVICE_BETWEEN_5_AND_7_INCH:I = 0x0

.field public static final DEVICE_PHONE:I = -0x1

.field public static final SCALED_DENSITY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/dolphin/browser/util/DisplayManager;->DENSITY:F

    sput v0, Lcom/mgeek/android/util/DisplayManager;->DENSITY:F

    .line 19
    sget v0, Lcom/dolphin/browser/util/DisplayManager;->SCALED_DENSITY:F

    sput v0, Lcom/mgeek/android/util/DisplayManager;->SCALED_DENSITY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dipToPixel(F)I
    .locals 1

    .prologue
    .line 129
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(F)I

    move-result v0

    return v0
.end method

.method public static dipToPixel(I)I
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    return v0
.end method

.method public static getDeviceSize(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 103
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDeviceSize(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static getDeviceType(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 110
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDeviceType(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getDeviceTypeForTab(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 124
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDeviceTypeForTab(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getMobileDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandomColor()I
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/dolphin/browser/util/DisplayManager;->getRandomColor()I

    move-result v0

    return v0
.end method

.method public static getRotation(Landroid/content/Context;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getRotation(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getScreenOrientation(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 152
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getShortcutIconPixelSize()F
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/dolphin/browser/util/DisplayManager;->getShortcutIconPixelSize()F

    move-result v0

    return v0
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 1

    .prologue
    .line 180
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public static isHardwareAccelerated(Landroid/graphics/Canvas;)Z
    .locals 1

    .prologue
    .line 79
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->isHardwareAccelerated(Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 83
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isPad(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->isPad(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 148
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSmallScreenDevice(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 171
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->isSmallScreenDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 166
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->isTablet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isTenderloin()Z
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/dolphin/browser/util/DisplayManager;->isTenderloin()Z

    move-result v0

    return v0
.end method

.method public static final onConfigurationChanged()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/dolphin/browser/util/DisplayManager;->onConfigurationChanged()V

    .line 46
    return-void
.end method

.method public static pixelToDip(I)I
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->pixelToDip(I)I

    move-result v0

    return v0
.end method

.method public static screenHeightDip(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightDip(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static screenHeightPhysical(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPhysical(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static screenHeightPixel(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPixel(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static screenWidthDip(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthDip(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static screenWidthPhysical(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPhysical(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static screenWidthPixel(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static setHardwareAccelerated(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 87
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->setHardwareAccelerated(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public static setHardwareAccelerated(Landroid/view/Window;)V
    .locals 0

    .prologue
    .line 95
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->setHardwareAccelerated(Landroid/view/Window;)V

    .line 96
    return-void
.end method

.method public static setSoftwareRendering(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 91
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->setSoftwareRendering(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public static spToPixel(F)F
    .locals 1

    .prologue
    .line 144
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->spToPixel(F)F

    move-result v0

    return v0
.end method
