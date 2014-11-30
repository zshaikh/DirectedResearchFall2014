.class Ldolphin/webkit/im;
.super Landroid/graphics/drawable/Drawable;
.source "WebViewClassic.java"


# instance fields
.field a:Landroid/graphics/Region;

.field b:Landroid/graphics/Region;

.field c:F

.field d:Ldolphin/webkit/WebViewClassic;

.field e:Landroid/graphics/Paint;

.field f:I

.field g:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 9060
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 9054
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/im;->c:F

    .line 9061
    iput-object p1, p0, Ldolphin/webkit/im;->d:Ldolphin/webkit/WebViewClassic;

    .line 9062
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Ldolphin/webkit/im;->d:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->ah(Ldolphin/webkit/WebViewClassic;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Ldolphin/webkit/im;->e:Landroid/graphics/Paint;

    .line 9063
    iget-object v0, p0, Ldolphin/webkit/im;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Ldolphin/webkit/im;->f:I

    .line 9064
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 9094
    iget-object v0, p0, Ldolphin/webkit/im;->g:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 9095
    iget-object v0, p0, Ldolphin/webkit/im;->a:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 9096
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 9097
    iget-object v2, p0, Ldolphin/webkit/im;->b:Landroid/graphics/Region;

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 9098
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 9099
    new-instance v0, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Ldolphin/webkit/im;->g:Landroid/graphics/Point;

    .line 9101
    :cond_0
    iget v0, p0, Ldolphin/webkit/im;->c:F

    iget v1, p0, Ldolphin/webkit/im;->f:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 9102
    new-instance v1, Landroid/graphics/RegionIterator;

    iget-object v2, p0, Ldolphin/webkit/im;->a:Landroid/graphics/Region;

    invoke-direct {v1, v2}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 9103
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 9104
    iget-object v3, p0, Ldolphin/webkit/im;->e:Landroid/graphics/Paint;

    iget v4, p0, Ldolphin/webkit/im;->f:I

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9105
    iget-object v3, p0, Ldolphin/webkit/im;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Ldolphin/webkit/im;->c:F

    mul-float/2addr v3, v4

    .line 9106
    iget-object v4, p0, Ldolphin/webkit/im;->g:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, p0, Ldolphin/webkit/im;->c:F

    mul-float/2addr v4, v5

    .line 9107
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->save(I)I

    move-result v5

    .line 9108
    neg-float v6, v3

    neg-float v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9109
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9110
    iget-object v6, p0, Ldolphin/webkit/im;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 9112
    :cond_1
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9113
    new-instance v1, Landroid/graphics/RegionIterator;

    iget-object v2, p0, Ldolphin/webkit/im;->b:Landroid/graphics/Region;

    invoke-direct {v1, v2}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 9114
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 9115
    iget-object v5, p0, Ldolphin/webkit/im;->e:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9116
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 9117
    iget-object v5, p0, Ldolphin/webkit/im;->g:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float v3, v5, v3

    .line 9118
    iget-object v5, p0, Ldolphin/webkit/im;->g:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    sub-float v4, v5, v4

    .line 9119
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9120
    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9121
    iget-object v3, p0, Ldolphin/webkit/im;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 9123
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9124
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 9076
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 9072
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 9068
    return-void
.end method
