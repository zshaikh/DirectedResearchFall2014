.class public Lcom/inmobi/androidsdk/ai/container/IMCustomView;
.super Landroid/view/View;
.source "IMCustomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;
    }
.end annotation


# static fields
.field private static synthetic k:[I


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4040

    const/high16 v2, 0x4000

    .line 32
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->f:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    .line 34
    iput p2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    .line 35
    const/16 v0, 0xf

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    .line 36
    const/high16 v0, 0x4248

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    .line 37
    const/high16 v0, 0x41f0

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->c:F

    .line 38
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->c:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->d:F

    .line 39
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->c:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->e:F

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->j:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    .line 43
    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->k:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->values()[Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->BACK:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->FORWARD_ACTIVE:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->REFRESH:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->k:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const/high16 v2, 0x40a0

    const/high16 v8, -0x100

    const/high16 v6, 0x4040

    const/4 v5, 0x1

    const/high16 v7, 0x4000

    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 48
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->f:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->c:F

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->d:F

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->d:F

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->e:F

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->e:F

    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 58
    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->d:F

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->e:F

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->e:F

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->d:F

    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->c:F

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 72
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 73
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 74
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 79
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 88
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 89
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 90
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 95
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 103
    :pswitch_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 104
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 105
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 106
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 111
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 119
    :pswitch_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 120
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v4, v4

    iget v5, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v5, v5

    iget v6, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 125
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->j:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x4387

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 127
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 128
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 133
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 138
    :pswitch_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v7

    sub-float v1, v0, v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float v2, v0, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v4, v4

    iget v5, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 143
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v7

    sub-float v1, v0, v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v4, v4

    iget v5, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSwitchInt(Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->f:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    .line 150
    return-void
.end method
