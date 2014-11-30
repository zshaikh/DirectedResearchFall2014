.class public Lcom/dolphin/browser/util/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field public static final DENSITY:F

.field public static final DEVICE_10INCH:I = 0x1

.field public static final DEVICE_7INCH:I = 0x0

.field public static final DEVICE_BELOW_5_INCH:I = -0x1

.field public static final DEVICE_BETWEEN_5_AND_7_INCH:I = 0x0

.field public static final DEVICE_PHONE:I = -0x1

.field public static final SCALED_DENSITY:F

.field private static a:Z

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:Ljava/lang/Boolean;

.field private static g:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/dolphin/browser/util/DisplayManager;->DENSITY:F

    .line 43
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/dolphin/browser/util/DisplayManager;->SCALED_DENSITY:F

    .line 53
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "C1504"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dolphin/browser/util/DisplayManager;->a:Z

    .line 384
    sput-object v2, Lcom/dolphin/browser/util/DisplayManager;->f:Ljava/lang/Boolean;

    .line 385
    sput-object v2, Lcom/dolphin/browser/util/DisplayManager;->g:Ljava/lang/Boolean;

    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method

.method public static dipToPixel(F)I
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000

    .line 320
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 321
    neg-float v0, p0

    sget v1, Lcom/dolphin/browser/util/DisplayManager;->DENSITY:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v0, v0

    .line 323
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/dolphin/browser/util/DisplayManager;->DENSITY:F

    mul-float/2addr v0, p0

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static dipToPixel(I)I
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000

    .line 101
    if-gez p0, :cond_0

    .line 102
    neg-int v0, p0

    int-to-float v0, v0

    sget v1, Lcom/dolphin/browser/util/DisplayManager;->DENSITY:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v0, v0

    .line 104
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p0

    sget v1, Lcom/dolphin/browser/util/DisplayManager;->DENSITY:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static getDeviceSize(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 256
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPhysical(Landroid/content/Context;)F

    move-result v0

    .line 257
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPhysical(Landroid/content/Context;)F

    move-result v1

    .line 258
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 259
    return v0
.end method

.method public static getDeviceSize2(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 270
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPhysical2(Landroid/content/Context;)F

    move-result v0

    .line 271
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPhysical2(Landroid/content/Context;)F

    move-result v1

    .line 272
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 273
    return v0
.end method

.method public static getDeviceType(Landroid/content/Context;)I
    .locals 3

    .prologue
    const v2, 0x40970a3d

    .line 281
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDeviceSize(Landroid/content/Context;)F

    move-result v0

    .line 282
    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    .line 283
    const/4 v0, -0x1

    .line 287
    :goto_0
    return v0

    .line 284
    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    const/high16 v1, 0x41000000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 285
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDeviceTypeForTab(Landroid/content/Context;)I
    .locals 3

    .prologue
    const v2, 0x4099999a

    .line 309
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDeviceSize(Landroid/content/Context;)F

    move-result v0

    .line 310
    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    .line 311
    const/4 v0, -0x1

    .line 315
    :goto_0
    return v0

    .line 312
    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    const/high16 v1, 0x41000000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 313
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    .prologue
    .line 176
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 178
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDeviceSize(Landroid/content/Context;)F

    move-result v0

    .line 297
    const v1, 0x40970a3d

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 298
    const-string v0, "phone"

    .line 300
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pad"

    goto :goto_0
.end method

.method public static getRandomColor()I
    .locals 3

    .prologue
    .line 335
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 338
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 339
    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 340
    aget v0, v0, v1

    return v0

    .line 335
    nop

    :array_0
    .array-data 4
        -0x1000000
        -0x10000
        -0x1
        -0x777778
        -0xff0100
    .end array-data
.end method

.method public static getRotation(Landroid/content/Context;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 168
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public static getScreenOrientation(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 355
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getShortcutIconPixelSize()F
    .locals 4

    .prologue
    const/high16 v0, 0x42900000

    const/high16 v3, 0x3f800000

    .line 370
    sget v1, Lcom/dolphin/browser/util/DisplayManager;->DENSITY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_1

    .line 371
    const/high16 v0, 0x42100000

    .line 381
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    sget v1, Lcom/dolphin/browser/util/DisplayManager;->DENSITY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    .line 373
    const/high16 v0, 0x42400000

    goto :goto_0

    .line 374
    :cond_2
    sget v1, Lcom/dolphin/browser/util/DisplayManager;->DENSITY:F

    const/high16 v2, 0x3fc00000

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    sget v1, Lcom/dolphin/browser/util/DisplayManager;->DENSITY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_0

    .line 377
    const/high16 v0, 0x42c00000

    goto :goto_0
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 4

    .prologue
    .line 420
    .line 421
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 422
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 423
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 424
    if-nez v0, :cond_0

    .line 427
    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 429
    const-string v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 430
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 431
    :catch_0
    move-exception v1

    .line 432
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isHardwareAccelerated(Landroid/graphics/Canvas;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 189
    :try_start_0
    const-class v0, Landroid/graphics/Canvas;

    const-string v2, "isHardwareAccelerated"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 194
    :goto_0
    return v0

    .line 191
    :catch_0
    move-exception v0

    :cond_0
    move v0, v1

    .line 194
    goto :goto_0
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 200
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    :goto_0
    return v0

    .line 201
    :catch_0
    move-exception v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPad(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 328
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDeviceType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 349
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmallScreenDevice(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 404
    if-nez p0, :cond_0

    sget-object v0, Lcom/dolphin/browser/util/DisplayManager;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context maynot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/DisplayManager;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 408
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthDip(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightDip(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/DisplayManager;->g:Ljava/lang/Boolean;

    .line 411
    :cond_1
    sget-object v0, Lcom/dolphin/browser/util/DisplayManager;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 408
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 388
    if-nez p0, :cond_0

    sget-object v0, Lcom/dolphin/browser/util/DisplayManager;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context maynot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/DisplayManager;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 393
    const-string v1, "is_tablet"

    const-string v2, "bool"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 394
    if-eqz v1, :cond_2

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/DisplayManager;->f:Ljava/lang/Boolean;

    .line 400
    :cond_1
    :goto_0
    sget-object v0, Lcom/dolphin/browser/util/DisplayManager;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 397
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/DisplayManager;->f:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isTenderloin()Z
    .locals 2

    .prologue
    .line 365
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "tenderloin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final onConfigurationChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    sput v0, Lcom/dolphin/browser/util/DisplayManager;->e:I

    .line 118
    sput v0, Lcom/dolphin/browser/util/DisplayManager;->d:I

    .line 119
    return-void
.end method

.method public static pixelToDip(I)I
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000

    .line 109
    if-gez p0, :cond_0

    .line 110
    neg-int v0, p0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    sget v1, Lcom/dolphin/browser/util/DisplayManager;->DENSITY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    .line 112
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p0

    sub-float/2addr v0, v1

    sget v1, Lcom/dolphin/browser/util/DisplayManager;->DENSITY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static screenHeightDip(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/dolphin/browser/util/DisplayManager;->c:I

    if-nez v0, :cond_0

    .line 154
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 156
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 157
    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->pixelToDip(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/util/DisplayManager;->c:I

    .line 160
    :cond_0
    sget v0, Lcom/dolphin/browser/util/DisplayManager;->c:I

    return v0
.end method

.method public static screenHeightPhysical(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 73
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 74
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 76
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static screenHeightPhysical2(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 87
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static screenHeightPixel(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 132
    sget v0, Lcom/dolphin/browser/util/DisplayManager;->e:I

    if-nez v0, :cond_0

    .line 133
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 135
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 136
    sput v0, Lcom/dolphin/browser/util/DisplayManager;->e:I

    .line 138
    :cond_0
    sget v0, Lcom/dolphin/browser/util/DisplayManager;->e:I

    return v0
.end method

.method public static screenWidthDip(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 142
    sget v0, Lcom/dolphin/browser/util/DisplayManager;->b:I

    if-nez v0, :cond_0

    .line 143
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 145
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 146
    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->pixelToDip(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/util/DisplayManager;->b:I

    .line 149
    :cond_0
    sget v0, Lcom/dolphin/browser/util/DisplayManager;->b:I

    return v0
.end method

.method public static screenWidthPhysical(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 80
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 83
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static screenWidthPhysical2(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 94
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static screenWidthPixel(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 122
    sget v0, Lcom/dolphin/browser/util/DisplayManager;->d:I

    if-nez v0, :cond_0

    .line 123
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 125
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 126
    sput v0, Lcom/dolphin/browser/util/DisplayManager;->d:I

    .line 128
    :cond_0
    sget v0, Lcom/dolphin/browser/util/DisplayManager;->d:I

    return v0
.end method

.method public static setHardwareAccelerated(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 213
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/util/as;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 215
    :cond_0
    return-void
.end method

.method public static setHardwareAccelerated(Landroid/view/Window;)V
    .locals 2

    .prologue
    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 232
    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 234
    :cond_0
    return-void
.end method

.method public static setSoftwareRendering(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 219
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/util/as;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 221
    :cond_0
    return-void
.end method

.method public static setWindowBrightness(Landroid/view/Window;F)V
    .locals 4

    .prologue
    const v3, 0x3cf5c28f

    .line 238
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 240
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 242
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v2, -0x40800000

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 243
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 247
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const v2, 0x3dcccccd

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/dolphin/browser/util/DisplayManager;->a:Z

    if-eqz v1, :cond_1

    .line 248
    const v1, 0x3f333333

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 251
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 252
    return-void
.end method

.method public static spToPixel(F)F
    .locals 1

    .prologue
    .line 344
    sget v0, Lcom/dolphin/browser/util/DisplayManager;->SCALED_DENSITY:F

    mul-float/2addr v0, p0

    return v0
.end method
