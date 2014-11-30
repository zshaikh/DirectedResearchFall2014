.class public Lcom/nativex/monetization/manager/DensityManager;
.super Ljava/lang/Object;
.source "DensityManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dipToPixels(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # F

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 78
    .local v0, "pixels":I
    return v0
.end method

.method public static getDIP(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pixels"    # F

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static getDeviceScreenSize(Landroid/app/Activity;)Lcom/nativex/monetization/ui/DeviceScreenSize;
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v10, 0x41200000

    .line 35
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 36
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getOrientation()I

    move-result v3

    .line 42
    .local v3, "orientation":I
    if-eqz v3, :cond_0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 43
    :cond_0
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iget v7, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v1, v6, v7

    .line 44
    .local v1, "heightInches":F
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v5, v6, v7

    .line 49
    .local v5, "widthInches":F
    :goto_0
    mul-float v6, v1, v1

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 50
    .local v0, "diagonalInches":F
    mul-float v6, v0, v10

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float v0, v6, v10

    .line 52
    new-instance v4, Lcom/nativex/monetization/ui/DeviceScreenSize;

    invoke-direct {v4}, Lcom/nativex/monetization/ui/DeviceScreenSize;-><init>()V

    .line 53
    .local v4, "size":Lcom/nativex/monetization/ui/DeviceScreenSize;
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v6}, Lcom/nativex/monetization/ui/DeviceScreenSize;->setHeightPixels(I)V

    .line 54
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v6}, Lcom/nativex/monetization/ui/DeviceScreenSize;->setWidthPixels(I)V

    .line 55
    invoke-virtual {v4, v5}, Lcom/nativex/monetization/ui/DeviceScreenSize;->setWidthInches(F)V

    .line 56
    invoke-virtual {v4, v1}, Lcom/nativex/monetization/ui/DeviceScreenSize;->setHeightInches(F)V

    .line 57
    invoke-virtual {v4, v0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->setDiagonalInches(F)V

    .line 58
    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v6}, Lcom/nativex/monetization/ui/DeviceScreenSize;->setDensity(F)V

    .line 60
    return-object v4

    .line 46
    .end local v0    # "diagonalInches":F
    .end local v1    # "heightInches":F
    .end local v4    # "size":Lcom/nativex/monetization/ui/DeviceScreenSize;
    .end local v5    # "widthInches":F
    :cond_1
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v1, v6, v7

    .line 47
    .restart local v1    # "heightInches":F
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    iget v7, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v5, v6, v7

    .restart local v5    # "widthInches":F
    goto :goto_0
.end method

.method public static getMRAIDDip(F)I
    .locals 1
    .param p0, "pixels"    # F

    .prologue
    .line 71
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p0, v0

    float-to-int v0, v0

    return v0
.end method
