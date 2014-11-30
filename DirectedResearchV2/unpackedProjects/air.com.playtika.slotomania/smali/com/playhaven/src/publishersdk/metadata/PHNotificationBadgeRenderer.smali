.class public Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;
.super Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
.source "PHNotificationBadgeRenderer.java"


# instance fields
.field private final TEXT_SIZE:F

.field private final TEXT_SIZE_REDUCE:F

.field private badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;-><init>()V

    .line 22
    const/high16 v1, 0x41880000

    iput v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->TEXT_SIZE:F

    .line 24
    const/high16 v1, 0x41000000

    iput v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->TEXT_SIZE_REDUCE:F

    .line 29
    invoke-static {}, Lcom/playhaven/resources/PHResourceManager;->sharedResourceManager()Lcom/playhaven/resources/PHResourceManager;

    move-result-object v1

    const-string v2, "badge_image"

    invoke-virtual {v1, v2}, Lcom/playhaven/resources/PHResourceManager;->getResource(Ljava/lang/String;)Lcom/playhaven/resources/PHResource;

    move-result-object v0

    check-cast v0, Lcom/playhaven/resources/PHNinePatchResource;

    .line 31
    .local v0, "ninePatchRes":Lcom/playhaven/resources/PHNinePatchResource;
    sget v1, Lcom/playhaven/src/common/PHConfig;->screen_density_type:I

    invoke-virtual {v0, p1, v1}, Lcom/playhaven/resources/PHNinePatchResource;->loadNinePatchDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    .line 32
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setFilterBitmap(Z)V

    .line 33
    return-void
.end method

.method private getTextPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41880000

    invoke-static {v1}, Lcom/playhaven/src/utils/PHConversionUtils;->dipToPixels(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->whitePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private requestedValue(Lorg/json/JSONObject;)I
    .locals 2
    .param p1, "notificationData"    # Lorg/json/JSONObject;

    .prologue
    const-string v1, "value"

    .line 64
    if-eqz p1, :cond_0

    .line 65
    const-string v0, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 67
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
.method public draw(Landroid/graphics/Canvas;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "notificationData"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->requestedValue(Lorg/json/JSONObject;)I

    move-result v1

    .line 40
    .local v1, "value":I
    if-nez v1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p2}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->size(Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v0

    .line 43
    .local v0, "size":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 45
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41200000

    invoke-static {v3}, Lcom/playhaven/src/utils/PHConversionUtils;->dipToPixels(F)F

    move-result v3

    const/high16 v4, 0x41880000

    invoke-static {v4}, Lcom/playhaven/src/utils/PHConversionUtils;->dipToPixels(F)F

    move-result v4

    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public size(Lorg/json/JSONObject;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 73
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v4

    int-to-float v3, v4

    .line 74
    .local v3, "width":F
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->badgeImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v4

    int-to-float v0, v4

    .line 76
    .local v0, "height":F
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->requestedValue(Lorg/json/JSONObject;)I

    move-result v1

    .line 77
    .local v1, "value":I
    if-nez v1, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    :goto_0
    return-object v4

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;->requestedValue(Lorg/json/JSONObject;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 80
    .local v2, "valueWidth":F
    add-float v4, v3, v2

    const/high16 v5, 0x41000000

    invoke-static {v5}, Lcom/playhaven/src/utils/PHConversionUtils;->dipToPixels(F)F

    move-result v5

    sub-float v3, v4, v5

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Notification Width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " valueWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 83
    new-instance v4, Landroid/graphics/Rect;

    float-to-int v5, v3

    float-to-int v6, v0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method
