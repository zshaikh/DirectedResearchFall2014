.class public Lcom/fusepowered/m2/m2l/util/Dips;
.super Ljava/lang/Object;
.source "Dips.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFloatPixels(FLandroid/content/Context;)F
    .locals 2
    .param p0, "dips"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 42
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public static asIntPixels(FLandroid/content/Context;)I
    .locals 2
    .param p0, "dips"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/fusepowered/m2/m2l/util/Dips;->asFloatPixels(FLandroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
