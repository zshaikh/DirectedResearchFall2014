.class Lcom/dolphin/browser/menu/an;
.super Landroid/view/ViewGroup;
.source "PanelMenuView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/PanelMenuView;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/menu/PanelMenuView;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/dolphin/browser/menu/an;->a:Lcom/dolphin/browser/menu/PanelMenuView;

    .line 336
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 337
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/menu/an;->a(I)V

    .line 338
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/an;->getChildCount()I

    move-result v3

    move v1, v2

    .line 400
    :goto_0
    if-ge v1, v3, :cond_2

    .line 401
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/menu/an;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 402
    instance-of v4, v0, Lcom/dolphin/browser/menu/ac;

    if-eqz v4, :cond_1

    .line 403
    check-cast v0, Lcom/dolphin/browser/menu/ac;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ac;->a()V

    .line 400
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 404
    :cond_1
    instance-of v4, v0, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    .line 405
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 406
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/menu/ac;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ac;->a()V

    goto :goto_1

    .line 409
    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 418
    iput p1, p0, Lcom/dolphin/browser/menu/an;->d:I

    .line 419
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 344
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 395
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 349
    iget v3, p0, Lcom/dolphin/browser/menu/an;->b:I

    .line 350
    iget v4, p0, Lcom/dolphin/browser/menu/an;->c:I

    move v2, v1

    .line 351
    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_2

    move v0, v1

    .line 352
    :goto_1
    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    .line 353
    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v0

    .line 354
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/an;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 355
    invoke-virtual {p0, v5}, Lcom/dolphin/browser/menu/an;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 356
    mul-int v6, v0, v3

    .line 357
    mul-int v7, v2, v4

    .line 358
    add-int v8, v6, v3

    add-int v9, v7, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 352
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 362
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v2, -0x80000000

    const/4 v0, 0x0

    const/high16 v3, 0x40000000

    .line 367
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 368
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 371
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 372
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/an;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/dolphin/browser/menu/an;->getDefaultSize(II)I

    move-result v1

    .line 376
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/an;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/dolphin/browser/menu/an;->getDefaultSize(II)I

    move-result v2

    .line 377
    div-int/lit8 v1, v1, 0x3

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/menu/an;->measureChildren(II)V

    .line 381
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/an;->getChildCount()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 382
    :goto_0
    if-ge v0, v3, :cond_2

    .line 383
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/an;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 384
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 385
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_2
    iput v1, p0, Lcom/dolphin/browser/menu/an;->b:I

    .line 388
    iput v2, p0, Lcom/dolphin/browser/menu/an;->c:I

    .line 389
    iget v0, p0, Lcom/dolphin/browser/menu/an;->b:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/dolphin/browser/menu/an;->c:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/menu/an;->setMeasuredDimension(II)V

    .line 390
    return-void
.end method
