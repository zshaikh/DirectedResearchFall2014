.class public Lv2/com/playhaven/views/badge/PHBadgeRenderer;
.super Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;
.source "PHBadgeRenderer.java"


# instance fields
.field private final TEXT_SIZE:F

.field private final TEXT_SIZE_REDUCE:F

.field private badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;-><init>()V

    .line 24
    const/high16 v0, 0x4188

    iput v0, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->TEXT_SIZE:F

    .line 26
    const/high16 v0, 0x4100

    iput v0, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->TEXT_SIZE_REDUCE:F

    .line 19
    return-void
.end method

.method private getTextPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 2
    .parameter "context"

    .prologue
    .line 61
    iget-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4188

    invoke-static {p1, v1}, Lv2/com/playhaven/utils/PHConversionUtils;->dipToPixels(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    iget-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private requestedValue(Lorg/json/JSONObject;)I
    .locals 2
    .parameter "notificationData"

    .prologue
    const-string v1, "value"

    .line 73
    if-eqz p1, :cond_0

    .line 74
    const-string v0, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_1
    const-string v0, "value"

    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/content/Context;Landroid/graphics/Canvas;Lorg/json/JSONObject;)V
    .locals 6
    .parameter "context"
    .parameter "canvas"
    .parameter "notificationData"

    .prologue
    .line 46
    invoke-direct {p0, p3}, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->requestedValue(Lorg/json/JSONObject;)I

    move-result v1

    .line 47
    .local v1, value:I
    if-nez v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p3}, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->size(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v0

    .line 50
    .local v0, size:Landroid/graphics/Rect;
    iget-object v2, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 52
    iget-object v2, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x4120

    invoke-static {p1, v3}, Lv2/com/playhaven/utils/PHConversionUtils;->dipToPixels(Landroid/content/Context;F)F

    move-result v3

    .line 55
    const/high16 v4, 0x4188

    invoke-static {p1, v4}, Lv2/com/playhaven/utils/PHConversionUtils;->dipToPixels(Landroid/content/Context;F)F

    move-result v4

    .line 56
    invoke-direct {p0, p1}, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->getTextPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v5

    .line 54
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public loadResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 4
    .parameter "context"
    .parameter "res"

    .prologue
    .line 35
    invoke-static {}, Lv2/com/playhaven/resources/PHResourceManager;->sharedResourceManager()Lv2/com/playhaven/resources/PHResourceManager;

    move-result-object v2

    const-string v3, "badge_image"

    invoke-virtual {v2, v3}, Lv2/com/playhaven/resources/PHResourceManager;->getResource(Ljava/lang/String;)Lv2/com/playhaven/resources/types/PHResource;

    move-result-object v1

    check-cast v1, Lv2/com/playhaven/resources/types/PHNinePatchResource;

    .line 37
    .local v1, ninePatchRes:Lv2/com/playhaven/resources/types/PHNinePatchResource;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 40
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, p2, v2}, Lv2/com/playhaven/resources/types/PHNinePatchResource;->loadNinePatchDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v2

    iput-object v2, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    .line 41
    iget-object v2, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setFilterBitmap(Z)V

    .line 42
    return-void
.end method

.method public size(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/graphics/Rect;
    .locals 8
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 82
    iget-object v4, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v4

    int-to-float v3, v4

    .line 83
    .local v3, width:F
    iget-object v4, p0, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v4

    int-to-float v0, v4

    .line 85
    .local v0, height:F
    invoke-direct {p0, p2}, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->requestedValue(Lorg/json/JSONObject;)I

    move-result v1

    .line 86
    .local v1, value:I
    if-nez v1, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 91
    :goto_0
    return-object v4

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->getTextPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-direct {p0, p2}, Lv2/com/playhaven/views/badge/PHBadgeRenderer;->requestedValue(Lorg/json/JSONObject;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 89
    .local v2, valueWidth:F
    add-float v4, v3, v2

    const/high16 v5, 0x4100

    invoke-static {p1, v5}, Lv2/com/playhaven/utils/PHConversionUtils;->dipToPixels(Landroid/content/Context;F)F

    move-result v5

    sub-float v3, v4, v5

    .line 91
    new-instance v4, Landroid/graphics/Rect;

    float-to-int v5, v3

    float-to-int v6, v0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method
