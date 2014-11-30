.class public Lse/emilsjolander/stickylistheaders/s;
.super Landroid/view/ViewGroup;
.source "WrapperView.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/graphics/drawable/Drawable;

.field c:I

.field d:Landroid/view/View;

.field e:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List view item must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 50
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/s;->removeView(Landroid/view/View;)V

    .line 51
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 54
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    :cond_1
    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/s;->addView(Landroid/view/View;)V

    .line 62
    :cond_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    if-eq v0, p2, :cond_4

    .line 63
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/s;->removeView(Landroid/view/View;)V

    .line 66
    :cond_3
    iput-object p2, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    .line 67
    if-eqz p2, :cond_4

    .line 68
    invoke-virtual {p0, p2}, Lse/emilsjolander/stickylistheaders/s;->addView(Landroid/view/View;)V

    .line 72
    :cond_4
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->b:Landroid/graphics/drawable/Drawable;

    if-eq v0, p3, :cond_5

    .line 73
    iput-object p3, p0, Lse/emilsjolander/stickylistheaders/s;->b:Landroid/graphics/drawable/Drawable;

    .line 74
    iput p4, p0, Lse/emilsjolander/stickylistheaders/s;->c:I

    .line 75
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/s;->invalidate()V

    .line 77
    :cond_5
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 141
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/s;->getWidth()I

    move-result v0

    iget v1, p0, Lse/emilsjolander/stickylistheaders/s;->c:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 147
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    :cond_1
    return-void
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    return-object v0
.end method

.method public getItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    .line 120
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/s;->getWidth()I

    move-result v0

    .line 121
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/s;->getHeight()I

    move-result v1

    .line 123
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 125
    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    invoke-virtual {v3, v4, v4, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 126
    iput v2, p0, Lse/emilsjolander/stickylistheaders/s;->e:I

    .line 127
    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/s;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/s;->b:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lse/emilsjolander/stickylistheaders/s;->c:I

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    iget v2, p0, Lse/emilsjolander/stickylistheaders/s;->c:I

    iput v2, p0, Lse/emilsjolander/stickylistheaders/s;->e:I

    .line 131
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    iget v3, p0, Lse/emilsjolander/stickylistheaders/s;->c:I

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 133
    :cond_1
    iput v4, p0, Lse/emilsjolander/stickylistheaders/s;->e:I

    .line 134
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000

    const/4 v1, 0x0

    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 82
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 87
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_0

    .line 90
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 96
    :goto_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    .line 102
    :goto_1
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 103
    if-eqz v4, :cond_2

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_2

    .line 104
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 110
    :goto_2
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    invoke-virtual {p0, v2, v0}, Lse/emilsjolander/stickylistheaders/s;->setMeasuredDimension(II)V

    .line 113
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/s;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 98
    iget v0, p0, Lse/emilsjolander/stickylistheaders/s;->c:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 107
    :cond_2
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v4, v3, v1}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method
