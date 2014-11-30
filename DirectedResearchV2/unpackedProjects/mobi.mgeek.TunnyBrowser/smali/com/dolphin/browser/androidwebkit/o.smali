.class Lcom/dolphin/browser/androidwebkit/o;
.super Landroid/view/View;
.source "MyWebView.java"


# instance fields
.field protected a:Lcom/dolphin/browser/androidwebkit/n;

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/MyWebView;

.field private final c:Lcom/dolphin/browser/ui/view/PopupWindow;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:I

.field private final j:Z

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebView;Lcom/dolphin/browser/androidwebkit/n;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 510
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    .line 511
    invoke-virtual {p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 502
    iput-boolean v2, p0, Lcom/dolphin/browser/androidwebkit/o;->j:Z

    .line 512
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/dolphin/browser/androidwebkit/o;->setPadding(IIII)V

    .line 513
    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/o;->a:Lcom/dolphin/browser/androidwebkit/n;

    .line 514
    new-instance v0, Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->c:Lcom/dolphin/browser/ui/view/PopupWindow;

    .line 515
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->c:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/view/PopupWindow;->e(Z)V

    .line 516
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->c:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/PopupWindow;->d(Z)V

    .line 517
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->c:Lcom/dolphin/browser/ui/view/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(I)V

    .line 518
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->c:Lcom/dolphin/browser/ui/view/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/graphics/drawable/Drawable;)V

    .line 519
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->c:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/view/PopupWindow;->c(Z)V

    .line 520
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->c:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Z)V

    .line 521
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/androidwebkit/o;->a(I)V

    .line 522
    return-void
.end method

.method private b(II)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 543
    iget v0, p0, Lcom/dolphin/browser/androidwebkit/o;->e:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/o;->k:I

    .line 544
    iput p2, p0, Lcom/dolphin/browser/androidwebkit/o;->l:I

    .line 545
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/o;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 546
    const/4 v0, 0x0

    .line 547
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/o;->c:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 548
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;)[I

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getLocationInWindow([I)V

    .line 550
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/o;->c:Lcom/dolphin/browser/ui/view/PopupWindow;

    aget v2, v0, v7

    iget v3, p0, Lcom/dolphin/browser/androidwebkit/o;->k:I

    add-int/2addr v2, v3

    aget v3, v0, v8

    iget v4, p0, Lcom/dolphin/browser/androidwebkit/o;->l:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(IIII)V

    .line 556
    :goto_0
    iget-boolean v1, p0, Lcom/dolphin/browser/androidwebkit/o;->g:Z

    if-eqz v1, :cond_2

    .line 557
    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;)[I

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getLocationInWindow([I)V

    .line 561
    :cond_0
    aget v1, v0, v7

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/o;->h:I

    if-ne v1, v2, :cond_1

    aget v1, v0, v8

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/o;->i:I

    if-eq v1, v2, :cond_2

    .line 562
    :cond_1
    iget v1, p0, Lcom/dolphin/browser/androidwebkit/o;->n:F

    aget v2, v0, v7

    iget v3, p0, Lcom/dolphin/browser/androidwebkit/o;->h:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/dolphin/browser/androidwebkit/o;->n:F

    .line 563
    iget v1, p0, Lcom/dolphin/browser/androidwebkit/o;->o:F

    aget v2, v0, v8

    iget v3, p0, Lcom/dolphin/browser/androidwebkit/o;->i:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/dolphin/browser/androidwebkit/o;->o:F

    .line 564
    aget v1, v0, v7

    iput v1, p0, Lcom/dolphin/browser/androidwebkit/o;->h:I

    .line 565
    aget v0, v0, v8

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/o;->i:I

    .line 571
    :cond_2
    :goto_1
    return-void

    .line 553
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->b()V

    goto :goto_0

    .line 569
    :cond_4
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->a()V

    goto :goto_1
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 531
    iget-boolean v1, p0, Lcom/dolphin/browser/androidwebkit/o;->g:Z

    if-eqz v1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v0

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->u()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/o;->g:Z

    .line 526
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->c:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->b()V

    .line 527
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 633
    if-nez p1, :cond_1

    .line 634
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->e(Lcom/dolphin/browser/androidwebkit/MyWebView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/core/R$drawable;->text_select_handle_left:I

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->e(Lcom/dolphin/browser/androidwebkit/MyWebView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->d:Landroid/graphics/drawable/Drawable;

    .line 639
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 640
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/o;->e:I

    .line 641
    iput v3, p0, Lcom/dolphin/browser/androidwebkit/o;->f:I

    .line 652
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/o;->m:F

    .line 653
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->invalidate()V

    .line 654
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->f(Lcom/dolphin/browser/androidwebkit/MyWebView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/core/R$drawable;->text_select_handle_right:I

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->b(Lcom/dolphin/browser/androidwebkit/MyWebView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->f(Lcom/dolphin/browser/androidwebkit/MyWebView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->d:Landroid/graphics/drawable/Drawable;

    .line 648
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 649
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/o;->e:I

    .line 650
    iput v3, p0, Lcom/dolphin/browser/androidwebkit/o;->f:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/o;->b(II)V

    .line 629
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 657
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->a()V

    .line 667
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->c:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/view/View;)V

    .line 662
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;)[I

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getLocationInWindow([I)V

    .line 664
    aget v1, v0, v4

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/o;->k:I

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 665
    aget v1, v0, v5

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/o;->l:I

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 666
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/o;->c:Lcom/dolphin/browser/ui/view/PopupWindow;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    aget v3, v0, v4

    aget v0, v0, v5

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 575
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/o;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 582
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 584
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/o;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/androidwebkit/o;->setMeasuredDimension(II)V

    .line 589
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 620
    :goto_0
    return v1

    .line 595
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 597
    iget v4, p0, Lcom/dolphin/browser/androidwebkit/o;->k:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/dolphin/browser/androidwebkit/o;->n:F

    .line 598
    iget v2, p0, Lcom/dolphin/browser/androidwebkit/o;->l:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    iput v2, p0, Lcom/dolphin/browser/androidwebkit/o;->o:F

    .line 599
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;)[I

    move-result-object v2

    .line 600
    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getLocationInWindow([I)V

    .line 601
    aget v0, v2, v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/o;->h:I

    .line 602
    aget v0, v2, v1

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/o;->i:I

    .line 603
    iput-boolean v1, p0, Lcom/dolphin/browser/androidwebkit/o;->g:Z

    .line 604
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;Z)Z

    goto :goto_0

    .line 610
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/o;->g:Z

    .line 611
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/o;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-boolean v2, p0, Lcom/dolphin/browser/androidwebkit/o;->g:Z

    invoke-static {v0, v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;Z)Z

    .line 612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 614
    iget v3, p0, Lcom/dolphin/browser/androidwebkit/o;->n:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/dolphin/browser/androidwebkit/o;->e:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 615
    iget v3, p0, Lcom/dolphin/browser/androidwebkit/o;->o:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/dolphin/browser/androidwebkit/o;->f:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/dolphin/browser/androidwebkit/o;->m:F

    add-float/2addr v2, v3

    .line 616
    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/o;->a:Lcom/dolphin/browser/androidwebkit/n;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-interface {v3, p0, v0, v2}, Lcom/dolphin/browser/androidwebkit/n;->a(Lcom/dolphin/browser/androidwebkit/o;II)V

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
