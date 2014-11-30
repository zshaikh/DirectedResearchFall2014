.class public Ldolphin/webkit/GLWebView;
.super Ldolphin/webkit/co;
.source "GLWebView.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GLWebView"


# instance fields
.field private mHasPendingRect:Z

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mPendingRect:Landroid/graphics/Rect;

.field private mPrivateAccess:Ldolphin/webkit/ia;

.field private mProvider:Ldolphin/webkit/WebViewClassic;

.field private mWebView:Ldolphin/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldolphin/webkit/WebView;)V
    .locals 1

    .prologue
    .line 419
    invoke-direct {p0, p1}, Ldolphin/webkit/co;-><init>(Landroid/content/Context;)V

    .line 690
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/GLWebView;->mInvalidateRect:Landroid/graphics/Rect;

    .line 711
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/GLWebView;->mPendingRect:Landroid/graphics/Rect;

    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/GLWebView;->mHasPendingRect:Z

    .line 420
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldolphin/webkit/GLWebView;->setZOrderOnTop(Z)V

    .line 421
    iput-object p2, p0, Ldolphin/webkit/GLWebView;->mWebView:Ldolphin/webkit/WebView;

    .line 422
    return-void
.end method

.method static synthetic access$001(Ldolphin/webkit/GLWebView;)I
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Ldolphin/webkit/GLWebView;IIIIIIIIZ)Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual/range {p0 .. p9}, Ldolphin/webkit/GLWebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$101(Ldolphin/webkit/GLWebView;II)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method static synthetic access$1100(Ldolphin/webkit/GLWebView;I)Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Ldolphin/webkit/GLWebView;->awakenScrollBars(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ldolphin/webkit/GLWebView;IZ)Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/GLWebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Ldolphin/webkit/GLWebView;)F
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ldolphin/webkit/GLWebView;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Ldolphin/webkit/GLWebView;)F
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ldolphin/webkit/GLWebView;->getHorizontalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Ldolphin/webkit/GLWebView;II)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/GLWebView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1600(Ldolphin/webkit/GLWebView;)I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ldolphin/webkit/GLWebView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Ldolphin/webkit/GLWebView;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Ldolphin/webkit/GLWebView;->mScrollX:I

    return p1
.end method

.method static synthetic access$1802(Ldolphin/webkit/GLWebView;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Ldolphin/webkit/GLWebView;->mScrollY:I

    return p1
.end method

.method static synthetic access$1901(Ldolphin/webkit/GLWebView;Landroid/view/ContextMenu;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method

.method static synthetic access$2001(Ldolphin/webkit/GLWebView;Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method static synthetic access$201(Ldolphin/webkit/GLWebView;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method static synthetic access$2100(Ldolphin/webkit/GLWebView;)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ldolphin/webkit/GLWebView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Ldolphin/webkit/GLWebView;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$2202(Ldolphin/webkit/GLWebView;Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewClassic;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    return-object p1
.end method

.method static synthetic access$2300(Ldolphin/webkit/GLWebView;)Ldolphin/webkit/ia;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mPrivateAccess:Ldolphin/webkit/ia;

    return-object v0
.end method

.method static synthetic access$2400(Ldolphin/webkit/GLWebView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mPendingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2502(Ldolphin/webkit/GLWebView;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Ldolphin/webkit/GLWebView;->mHasPendingRect:Z

    return p1
.end method

.method static synthetic access$301(Ldolphin/webkit/GLWebView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$401(Ldolphin/webkit/GLWebView;)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$501(Ldolphin/webkit/GLWebView;IIII)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$601(Ldolphin/webkit/GLWebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$701(Ldolphin/webkit/GLWebView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$801(Ldolphin/webkit/GLWebView;ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$901(Ldolphin/webkit/GLWebView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->y()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->x()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->E()V

    .line 513
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->B()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->A()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->z()I

    move-result v0

    return v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mWebView:Ldolphin/webkit/WebView;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebView;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 682
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public drawGL(ILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p0, p1, p2}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/GLWebView;ILandroid/graphics/Rect;)V

    .line 441
    return-void
.end method

.method getPrivateAccess()Ldolphin/webkit/ia;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mPrivateAccess:Ldolphin/webkit/ia;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Ldolphin/webkit/cq;

    invoke-direct {v0, p0}, Ldolphin/webkit/cq;-><init>(Ldolphin/webkit/GLWebView;)V

    iput-object v0, p0, Ldolphin/webkit/GLWebView;->mPrivateAccess:Ldolphin/webkit/ia;

    .line 432
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mPrivateAccess:Ldolphin/webkit/ia;

    return-object v0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 708
    iget v0, p0, Ldolphin/webkit/GLWebView;->mRight:I

    iget v1, p0, Ldolphin/webkit/GLWebView;->mBottom:I

    invoke-virtual {p0, v2, v2, v0, v1}, Ldolphin/webkit/GLWebView;->invalidate(IIII)V

    .line 709
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->isReadyToDraw()Z

    move-result v0

    if-nez v0, :cond_2

    .line 694
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ldolphin/webkit/co;->invalidate(IIII)V

    .line 704
    :cond_1
    :goto_0
    return-void

    .line 698
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mInvalidateRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 703
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Ldolphin/webkit/GLWebView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 716
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->isReadyToDraw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 717
    invoke-super {p0, p1}, Ldolphin/webkit/co;->invalidate(Landroid/graphics/Rect;)V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mPendingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 722
    iget-boolean v0, p0, Ldolphin/webkit/GLWebView;->mHasPendingRect:Z

    if-nez v0, :cond_0

    .line 726
    new-instance v0, Ldolphin/webkit/cp;

    invoke-direct {v0, p0}, Ldolphin/webkit/cp;-><init>(Ldolphin/webkit/GLWebView;)V

    const-wide/16 v1, 0x11

    invoke-virtual {p0, v0, v1, v2}, Ldolphin/webkit/GLWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/GLWebView;->mHasPendingRect:Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 453
    invoke-super {p0}, Ldolphin/webkit/co;->onAttachedToWindow()V

    .line 454
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onAttachedToWindow()V

    .line 455
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 604
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onDetachedFromWindow()V

    .line 460
    invoke-super {p0}, Ldolphin/webkit/co;->onDetachedFromWindow()V

    .line 461
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 594
    return-void
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7

    .prologue
    .line 577
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 578
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 626
    invoke-super {p0, p1, p2, p3}, Ldolphin/webkit/co;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 627
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 660
    invoke-super {p0, p1, p2}, Ldolphin/webkit/co;->onMeasure(II)V

    .line 661
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onMeasure(II)V

    .line 662
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onOverScrolled(IIZZ)V

    .line 583
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 643
    invoke-super {p0, p1, p2, p3, p4}, Ldolphin/webkit/co;->onScrollChanged(IIII)V

    .line 644
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onScrollChanged(IIII)V

    .line 645
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 637
    invoke-super {p0, p1, p2, p3, p4}, Ldolphin/webkit/co;->onSizeChanged(IIII)V

    .line 638
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onSizeChanged(IIII)V

    .line 639
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 613
    invoke-super {p0, p1, p2}, Ldolphin/webkit/co;->onVisibilityChanged(Landroid/view/View;I)V

    .line 614
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onVisibilityChanged(Landroid/view/View;I)V

    .line 615
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onWindowFocusChanged(Z)V

    .line 620
    invoke-super {p0, p1}, Ldolphin/webkit/co;->onWindowFocusChanged(Z)V

    .line 621
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 587
    invoke-super {p0, p1}, Ldolphin/webkit/co;->onWindowVisibilityChanged(I)V

    .line 588
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onWindowVisibilityChanged(I)V

    .line 589
    return-void
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->setBackgroundColor(I)V

    .line 671
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 675
    invoke-super {p0, p1, p2}, Ldolphin/webkit/co;->setLayerType(ILandroid/graphics/Paint;)V

    .line 676
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->setLayerType(ILandroid/graphics/Paint;)V

    .line 677
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mWebView:Ldolphin/webkit/WebView;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 687
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0, p1}, Ldolphin/webkit/co;->setOverScrollMode(I)V

    .line 474
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->setOverScrollMode(I)V

    .line 477
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->setScrollBarStyle(I)V

    .line 482
    invoke-super {p0, p1}, Ldolphin/webkit/co;->setScrollBarStyle(I)V

    .line 483
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method
