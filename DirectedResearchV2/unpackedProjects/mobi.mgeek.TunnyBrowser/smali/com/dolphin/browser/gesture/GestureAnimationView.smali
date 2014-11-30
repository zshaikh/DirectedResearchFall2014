.class public Lcom/dolphin/browser/gesture/GestureAnimationView;
.super Lcom/dolphin/browser/gesture/GestureView;
.source "GestureAnimationView.java"


# instance fields
.field private f:Lcom/dolphin/browser/gesture/d;

.field private g:Landroid/graphics/Paint;

.field private h:J

.field private i:J

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/dolphin/browser/gesture/GestureAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/gesture/GestureAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/gesture/GestureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->i:J

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->m:Z

    .line 34
    new-instance v0, Lcom/dolphin/browser/gesture/d;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/gesture/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->f:Lcom/dolphin/browser/gesture/d;

    .line 35
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->l()V

    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->j:I

    .line 37
    return-void
.end method

.method private c(J)V
    .locals 4

    .prologue
    .line 141
    const/high16 v0, 0x3f800000

    long-to-float v1, p1

    iget-wide v2, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->i:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->j:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 142
    if-gez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->m:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->f:Lcom/dolphin/browser/gesture/d;

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->j()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/gesture/d;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 92
    :cond_0
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->k:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->a:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->a:Lcom/dolphin/browser/gesture/Gesture;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->a:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v1}, Lcom/dolphin/browser/gesture/Gesture;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/Gesture;->a(I)Landroid/graphics/Path;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 101
    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 43
    const v1, 0x4000ff00

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 46
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 47
    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->g:Landroid/graphics/Paint;

    .line 48
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-super {p0}, Lcom/dolphin/browser/gesture/GestureView;->a()V

    .line 107
    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->l:Z

    .line 108
    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->k:Z

    .line 109
    return-void
.end method

.method protected a(F)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->invalidate()V

    .line 53
    return-void
.end method

.method protected a(J)V
    .locals 5

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->h:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 130
    iget-wide v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->h:J

    sub-long v0, p1, v0

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/gesture/GestureAnimationView;->c(J)V

    .line 131
    iget-wide p1, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->h:J

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->a:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/Gesture;->g()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, p1

    iget-wide v2, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->h:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 136
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->i()V

    .line 137
    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->a:Lcom/dolphin/browser/gesture/Gesture;

    iget-object v2, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->b:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->j()Landroid/graphics/PointF;

    move-result-object v3

    iget-boolean v4, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->e:Z

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/dolphin/browser/gesture/Gesture;->a(Landroid/graphics/Path;Landroid/graphics/PointF;IZ)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->b:Landroid/graphics/Path;

    .line 138
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/GestureAnimationView;->d(Landroid/graphics/Canvas;)V

    .line 78
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->f:Lcom/dolphin/browser/gesture/d;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->i()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->l:Z

    .line 114
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->invalidate()V

    .line 115
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/dolphin/browser/gesture/GestureView;->b(I)V

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->j:I

    .line 60
    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/GestureAnimationView;->c(Landroid/graphics/Canvas;)V

    .line 86
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->k:Z

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->k:Z

    .line 123
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->invalidate()V

    .line 124
    return-void
.end method

.method protected e()V
    .locals 4

    .prologue
    .line 151
    invoke-super {p0}, Lcom/dolphin/browser/gesture/GestureView;->e()V

    .line 152
    iget-wide v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->d:J

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->h:J

    .line 153
    iget-wide v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->d:J

    iget-wide v2, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->d:J

    .line 154
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureAnimationView;->m:Z

    .line 158
    return-void
.end method
