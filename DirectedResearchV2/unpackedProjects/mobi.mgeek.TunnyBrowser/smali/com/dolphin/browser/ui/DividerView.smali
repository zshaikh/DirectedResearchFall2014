.class public Lcom/dolphin/browser/ui/DividerView;
.super Landroid/view/View;
.source "DividerView.java"


# static fields
.field private static final a:[F


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Path;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/ui/DividerView;->a:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x40000000
        0x40000000
        0x40000000
        0x40000000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/DividerView;->f:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/DividerView;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 48
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    new-instance v1, Landroid/graphics/DashPathEffect;

    sget-object v2, Lcom/dolphin/browser/ui/DividerView;->a:[F

    const/high16 v3, 0x40a00000

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 53
    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iput-object v0, p0, Lcom/dolphin/browser/ui/DividerView;->b:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/DividerView;->c:Landroid/graphics/Path;

    .line 59
    iput v4, p0, Lcom/dolphin/browser/ui/DividerView;->e:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/DividerView;->d:I

    .line 62
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/DividerView;->f:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/ui/DividerView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/dolphin/browser/ui/DividerView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 125
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/ui/DividerView;->c:Landroid/graphics/Path;

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 99
    iget v1, p0, Lcom/dolphin/browser/ui/DividerView;->e:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    .line 100
    iget v2, p0, Lcom/dolphin/browser/ui/DividerView;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 101
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/DividerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/ui/DividerView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dolphin/browser/ui/DividerView;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 106
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/DividerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/ui/DividerView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dolphin/browser/ui/DividerView;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/high16 v1, 0x40000000

    .line 81
    iget v0, p0, Lcom/dolphin/browser/ui/DividerView;->d:I

    if-nez v0, :cond_0

    .line 82
    iget v0, p0, Lcom/dolphin/browser/ui/DividerView;->e:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 84
    invoke-super {p0, v0, p2}, Landroid/view/View;->onMeasure(II)V

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/ui/DividerView;->e:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 88
    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0
.end method
