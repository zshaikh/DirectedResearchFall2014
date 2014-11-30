.class final Landroid/view/c;
.super Landroid/widget/FrameLayout;
.source "CustomMenuActivity.java"


# instance fields
.field a:I

.field final synthetic b:Landroid/view/CustomMenuActivity;

.field private final c:I

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private h:Z

.field private i:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/CustomMenuActivity;Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 120
    iput-object p1, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    .line 121
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/c;->a:I

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/c;->d:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/c;->e:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/c;->f:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/c;->g:Landroid/graphics/Rect;

    .line 122
    iput p3, p0, Landroid/view/c;->c:I

    .line 123
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201e6

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/c;->b(Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 438
    iget-boolean v0, p0, Landroid/view/c;->h:Z

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Landroid/view/c;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/c;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/view/c;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/c;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/view/c;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/c;->e:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/c;->f:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/view/c;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/view/c;->setPadding(IIII)V

    .line 445
    invoke-virtual {p0}, Landroid/view/c;->requestLayout()V

    .line 446
    invoke-virtual {p0}, Landroid/view/c;->invalidate()V

    .line 455
    invoke-virtual {p0}, Landroid/view/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Landroid/view/c;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 457
    if-eqz v0, :cond_8

    .line 458
    if-nez v1, :cond_3

    .line 459
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 492
    :cond_2
    :goto_1
    iput v0, p0, Landroid/view/c;->a:I

    .line 493
    iget v1, p0, Landroid/view/c;->c:I

    if-gez v1, :cond_0

    .line 494
    iget-object v1, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-virtual {v1}, Landroid/view/CustomMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setDefaultWindowFormat(I)V

    goto :goto_0

    .line 460
    :cond_3
    iget-object v3, p0, Landroid/view/c;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gtz v3, :cond_7

    iget-object v3, p0, Landroid/view/c;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gtz v3, :cond_7

    iget-object v3, p0, Landroid/view/c;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gtz v3, :cond_7

    iget-object v3, p0, Landroid/view/c;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gtz v3, :cond_7

    .line 464
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 465
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 468
    if-eq v1, v2, :cond_4

    if-ne v0, v2, :cond_5

    :cond_4
    move v0, v2

    .line 469
    goto :goto_1

    .line 470
    :cond_5
    if-eqz v1, :cond_2

    .line 472
    if-nez v0, :cond_6

    move v0, v1

    .line 473
    goto :goto_1

    .line 475
    :cond_6
    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    goto :goto_1

    .line 483
    :cond_7
    const/4 v0, -0x3

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method private a(II)Z
    .locals 1

    .prologue
    const/4 v0, -0x5

    .line 216
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/c;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/c;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/view/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 406
    invoke-virtual {p0, p1}, Landroid/view/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    if-eqz p1, :cond_1

    .line 408
    iget-object v0, p0, Landroid/view/c;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 412
    :goto_0
    invoke-direct {p0}, Landroid/view/c;->a()V

    .line 414
    :cond_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Landroid/view/c;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/view/c;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 418
    invoke-virtual {p0, p1}, Landroid/view/c;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 419
    if-eqz p1, :cond_1

    .line 420
    iget-object v0, p0, Landroid/view/c;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 424
    :goto_0
    invoke-direct {p0}, Landroid/view/c;->a()V

    .line 426
    :cond_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Landroid/view/c;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 128
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 129
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 131
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x5b

    if-eq v3, v4, :cond_0

    const/4 v3, 0x4

    if-eq v3, v4, :cond_0

    .line 133
    iget-object v3, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-virtual {v3}, Landroid/view/CustomMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 134
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 138
    :cond_0
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 141
    iget-object v3, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v3}, Landroid/view/CustomMenuActivity;->c(Landroid/view/CustomMenuActivity;)I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v3}, Landroid/view/CustomMenuActivity;->c(Landroid/view/CustomMenuActivity;)I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 145
    iget-object v3, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    iget-object v5, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v5}, Landroid/view/CustomMenuActivity;->d(Landroid/view/CustomMenuActivity;)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v5

    invoke-static {v3, v5, v4, p1, v1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;Landroid/view/CustomMenuActivity$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 148
    if-nez v3, :cond_1

    .line 153
    invoke-virtual {p0, p1}, Landroid/view/c;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 155
    if-eqz v3, :cond_1

    iget-object v5, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v5}, Landroid/view/CustomMenuActivity;->d(Landroid/view/CustomMenuActivity;)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 156
    iget-object v5, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v5}, Landroid/view/CustomMenuActivity;->d(Landroid/view/CustomMenuActivity;)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v5

    iput-boolean v1, v5, Landroid/view/CustomMenuActivity$PanelFeatureState;->m:Z

    .line 160
    :cond_1
    if-eqz v3, :cond_4

    .line 180
    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v2

    .line 129
    goto :goto_0

    .line 167
    :cond_4
    iget-object v3, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v3}, Landroid/view/CustomMenuActivity;->d(Landroid/view/CustomMenuActivity;)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v3}, Landroid/view/CustomMenuActivity;->d(Landroid/view/CustomMenuActivity;)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v3

    iget-boolean v3, v3, Landroid/view/CustomMenuActivity$PanelFeatureState;->n:Z

    if-eqz v3, :cond_5

    .line 168
    iget-object v3, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    iget-object v5, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v5}, Landroid/view/CustomMenuActivity;->d(Landroid/view/CustomMenuActivity;)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v5

    invoke-static {v3, v5, v4, p1, v2}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;Landroid/view/CustomMenuActivity$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 174
    :cond_5
    iget-object v2, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-virtual {v2}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_6

    iget v3, p0, Landroid/view/c;->c:I

    if-gez v3, :cond_6

    invoke-interface {v2, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 177
    :goto_2
    if-nez v2, :cond_2

    .line 180
    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    iget v1, p0, Landroid/view/c;->c:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/CustomMenuActivity;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_3
    move v1, v0

    goto :goto_1

    .line 175
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 180
    :cond_7
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    iget v1, p0, Landroid/view/c;->c:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/CustomMenuActivity;->b(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-virtual {v0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    .line 321
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-virtual {v0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/c;->c:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-virtual {v0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/c;->c:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 375
    iget-object v0, p0, Landroid/view/c;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Landroid/view/c;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 378
    :cond_0
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/view/c;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 431
    invoke-virtual {p0}, Landroid/view/c;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0}, Landroid/view/c;->a()V

    .line 434
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 518
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 520
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-virtual {v0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/c;->c:I

    if-gez v1, :cond_0

    .line 522
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 525
    :cond_0
    iget v0, p0, Landroid/view/c;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 533
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v0}, Landroid/view/CustomMenuActivity;->f(Landroid/view/CustomMenuActivity;)V

    .line 535
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 539
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 541
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-virtual {v0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/c;->c:I

    if-gez v1, :cond_0

    .line 543
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 545
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 223
    iget v1, p0, Landroid/view/c;->c:I

    if-ltz v1, :cond_0

    .line 224
    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 227
    invoke-direct {p0, v0, v1}, Landroid/view/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    iget v1, p0, Landroid/view/c;->c:I

    invoke-virtual {v0, v1}, Landroid/view/CustomMenuActivity;->a(I)V

    .line 229
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 331
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 332
    if-eqz p1, :cond_1

    .line 333
    iget-object v0, p0, Landroid/view/c;->d:Landroid/graphics/Rect;

    .line 334
    invoke-virtual {p0, v0}, Landroid/view/c;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 336
    invoke-virtual {p0}, Landroid/view/c;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_0

    .line 338
    iget-object v2, p0, Landroid/view/c;->g:Landroid/graphics/Rect;

    .line 339
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 340
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 341
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 342
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 343
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 344
    iget-object v1, p0, Landroid/view/c;->f:Landroid/graphics/Rect;

    .line 345
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 346
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 347
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 348
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    sub-int v1, v3, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 351
    :cond_0
    invoke-virtual {p0}, Landroid/view/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 369
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Landroid/view/c;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 502
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v0, v1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;Z)Z

    .line 506
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v0}, Landroid/view/CustomMenuActivity;->c(Landroid/view/CustomMenuActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-virtual {v0, v1}, Landroid/view/CustomMenuActivity;->a(I)V

    .line 510
    :cond_0
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-virtual {v0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/view/c;->c:I

    if-gez v1, :cond_1

    .line 512
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 514
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/view/CustomMenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 306
    :cond_0
    iget v0, p0, Landroid/view/c;->c:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/c;->c:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/c;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/c;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/c;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 313
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v0}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    new-instance v1, Lcom/dolphin/browser/ui/menu/a;

    invoke-virtual {p0}, Landroid/view/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/ui/menu/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;Lcom/dolphin/browser/ui/menu/a;)Lcom/dolphin/browser/ui/menu/a;

    .line 386
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v0}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/a;

    move-result-object v0

    iget-object v1, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    iget-object v1, v1, Landroid/view/CustomMenuActivity;->a:Landroid/view/b;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/a;->setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V

    .line 391
    :goto_0
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    iget-object v1, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/dolphin/browser/ui/menu/a;->a(Landroid/view/View;Landroid/os/IBinder;)Lcom/dolphin/browser/ui/menu/d;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;Lcom/dolphin/browser/ui/menu/d;)Lcom/dolphin/browser/ui/menu/d;

    .line 392
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v0}, Landroid/view/CustomMenuActivity;->e(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/d;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 388
    :cond_0
    iget-object v0, p0, Landroid/view/c;->b:Landroid/view/CustomMenuActivity;

    invoke-static {v0}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/a;->clearAll()V

    goto :goto_0

    .line 392
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
