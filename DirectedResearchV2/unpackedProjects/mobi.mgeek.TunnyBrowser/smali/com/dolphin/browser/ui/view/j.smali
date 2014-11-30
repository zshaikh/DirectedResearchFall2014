.class Lcom/dolphin/browser/ui/view/j;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/view/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/ui/view/PopupWindow;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/j;->a:Lcom/dolphin/browser/ui/view/PopupWindow;

    .line 1355
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1356
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1372
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1373
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1375
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/j;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1384
    :goto_0
    return v0

    .line 1377
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/j;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1379
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/j;->a:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->b()V

    goto :goto_0

    .line 1382
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1384
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/j;->a:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->f(Lcom/dolphin/browser/ui/view/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/j;->a:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->f(Lcom/dolphin/browser/ui/view/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    const/4 v0, 0x1

    .line 1393
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/j;->a:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->e(Lcom/dolphin/browser/ui/view/PopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1363
    invoke-static {}, Lcom/dolphin/browser/ui/view/PopupWindow;->c()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1366
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1425
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1426
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1427
    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1428
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/j;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/j;->getHeight()I

    move-result v1

    if-lt v2, v1, :cond_1

    .line 1403
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/j;->a:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->b()V

    .line 1409
    :goto_0
    return v0

    .line 1405
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1406
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/j;->a:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->b()V

    goto :goto_0

    .line 1409
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/j;->a:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->g(Lcom/dolphin/browser/ui/view/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/j;->a:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->g(Lcom/dolphin/browser/ui/view/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1421
    :goto_0
    return-void

    .line 1419
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
