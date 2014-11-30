.class public Lam/sunrise/android/calendar/ui/widgets/agenda/k;
.super Landroid/view/View;
.source "AgendaViewBaseItem.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:Z

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->c()V

    .line 38
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->a:Landroid/graphics/Paint;

    .line 114
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->a:Landroid/graphics/Paint;

    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->b:I

    .line 118
    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->d:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->c:Z

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->c:Z

    .line 53
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->invalidate()V

    .line 55
    :cond_0
    return-void
.end method

.method protected a(II)V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->e:Z

    if-eqz v0, :cond_0

    .line 106
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->b:I

    add-int/2addr p2, v0

    .line 108
    :cond_0
    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->setMeasuredDimension(II)V

    .line 109
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;I)V
    .locals 3

    .prologue
    .line 87
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->c:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    const/4 v1, 0x0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->e:Z

    if-eq v0, p1, :cond_0

    .line 70
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->e:Z

    .line 72
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->c:Z

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->c:Z

    .line 60
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->invalidate()V

    .line 62
    :cond_0
    return-void
.end method

.method protected getDesiredMeasuredHeight()I
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 98
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->e:Z

    if-eqz v1, :cond_0

    .line 99
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->b:I

    sub-int/2addr v0, v1

    .line 101
    :cond_0
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->e:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->b:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 84
    :cond_0
    return-void
.end method
