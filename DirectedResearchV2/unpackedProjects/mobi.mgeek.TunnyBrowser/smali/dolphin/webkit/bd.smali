.class Ldolphin/webkit/bd;
.super Landroid/view/View;
.source "ColorPickerDialog.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private final c:[I

.field private d:Ldolphin/webkit/be;

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ldolphin/webkit/be;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Ldolphin/webkit/bd;->d:Ldolphin/webkit/be;

    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ldolphin/webkit/bd;->c:[I

    .line 48
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Ldolphin/webkit/bd;->c:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldolphin/webkit/bd;->a:Landroid/graphics/Paint;

    .line 51
    iget-object v1, p0, Ldolphin/webkit/bd;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    iget-object v0, p0, Ldolphin/webkit/bd;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Ldolphin/webkit/bd;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x42000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private a(IIF)I
    .locals 1

    .prologue
    .line 113
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private a([IF)I
    .locals 7

    .prologue
    .line 117
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 136
    :goto_0
    return v0

    .line 120
    :cond_0
    const/high16 v0, 0x3f800000

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 121
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    goto :goto_0

    .line 124
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 125
    float-to-int v1, v0

    .line 126
    int-to-float v2, v1

    sub-float/2addr v0, v2

    .line 129
    aget v2, p1, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    aget v1, p1, v1

    .line 131
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-direct {p0, v3, v4, v0}, Ldolphin/webkit/bd;->a(IIF)I

    move-result v3

    .line 132
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-direct {p0, v4, v5, v0}, Ldolphin/webkit/bd;->a(IIF)I

    move-result v4

    .line 133
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Ldolphin/webkit/bd;->a(IIF)I

    move-result v5

    .line 134
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Ldolphin/webkit/bd;->a(IIF)I

    move-result v0

    .line 136
    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, 0x42000000

    const/high16 v2, 0x42c80000

    const/4 v4, 0x0

    .line 65
    iget-object v0, p0, Ldolphin/webkit/bd;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x3f000000

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    .line 67
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    new-instance v1, Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-direct {v1, v2, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Ldolphin/webkit/bd;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 70
    iget-object v0, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 72
    iget-boolean v0, p0, Ldolphin/webkit/bd;->e:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 74
    iget-object v1, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-boolean v1, p0, Ldolphin/webkit/bd;->f:Z

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    :goto_0
    iget-object v1, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    add-float/2addr v1, v5

    iget-object v2, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    iget-object v1, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v1, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    :cond_0
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    const/16 v0, 0xc8

    .line 92
    invoke-virtual {p0, v0, v0}, Ldolphin/webkit/bd;->setMeasuredDimension(II)V

    .line 93
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x42c80000

    const/4 v1, 0x1

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float v3, v0, v4

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float v4, v0, v4

    .line 170
    mul-float v0, v3, v3

    mul-float v5, v4, v4

    add-float/2addr v0, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4040000000000000L

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_1

    move v0, v1

    .line 172
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 207
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 170
    goto :goto_0

    .line 174
    :pswitch_0
    iput-boolean v0, p0, Ldolphin/webkit/bd;->e:Z

    .line 175
    if-eqz v0, :cond_2

    .line 176
    iput-boolean v1, p0, Ldolphin/webkit/bd;->f:Z

    .line 177
    invoke-virtual {p0}, Ldolphin/webkit/bd;->invalidate()V

    goto :goto_1

    .line 181
    :cond_2
    :pswitch_1
    iget-boolean v2, p0, Ldolphin/webkit/bd;->e:Z

    if-eqz v2, :cond_3

    .line 182
    iget-boolean v2, p0, Ldolphin/webkit/bd;->f:Z

    if-eq v2, v0, :cond_0

    .line 183
    iput-boolean v0, p0, Ldolphin/webkit/bd;->f:Z

    .line 184
    invoke-virtual {p0}, Ldolphin/webkit/bd;->invalidate()V

    goto :goto_1

    .line 187
    :cond_3
    float-to-double v4, v4

    float-to-double v2, v3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 189
    const v2, 0x40c90fda

    div-float/2addr v0, v2

    .line 190
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    .line 191
    const/high16 v2, 0x3f800000

    add-float/2addr v0, v2

    .line 193
    :cond_4
    iget-object v2, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Ldolphin/webkit/bd;->c:[I

    invoke-direct {p0, v3, v0}, Ldolphin/webkit/bd;->a([IF)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    invoke-virtual {p0}, Ldolphin/webkit/bd;->invalidate()V

    goto :goto_1

    .line 198
    :pswitch_2
    iget-boolean v3, p0, Ldolphin/webkit/bd;->e:Z

    if-eqz v3, :cond_0

    .line 199
    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Ldolphin/webkit/bd;->d:Ldolphin/webkit/be;

    iget-object v3, p0, Ldolphin/webkit/bd;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-interface {v0, v3}, Ldolphin/webkit/be;->a(I)V

    .line 202
    :cond_5
    iput-boolean v2, p0, Ldolphin/webkit/bd;->e:Z

    .line 203
    invoke-virtual {p0}, Ldolphin/webkit/bd;->invalidate()V

    goto :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
