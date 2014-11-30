.class public Ldolphin/webkit/kk;
.super Ljava/lang/Object;
.source "WebViewImpl.java"

# interfaces
.implements Ldolphin/webkit/ia;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebViewImpl;


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebViewImpl;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Landroid/view/View;->getScrollBarStyle()I
    invoke-static {v0}, Ldolphin/webkit/WebViewImpl;->access$001(Ldolphin/webkit/WebViewImpl;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Ldolphin/webkit/WebViewImpl;->awakenScrollBars(I)Z
    invoke-static {v0, p1}, Ldolphin/webkit/WebViewImpl;->access$1100(Ldolphin/webkit/WebViewImpl;I)Z

    .line 107
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Landroid/view/View;->scrollTo(II)V
    invoke-static {v0, p1, p2}, Ldolphin/webkit/WebViewImpl;->access$101(Ldolphin/webkit/WebViewImpl;II)V

    .line 61
    return-void
.end method

.method public a(IIIIIIIIZ)V
    .locals 10

    .prologue
    .line 101
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    # invokes: Ldolphin/webkit/WebViewImpl;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v0 .. v9}, Ldolphin/webkit/WebViewImpl;->access$1000(Ldolphin/webkit/WebViewImpl;IIIIIIIIZ)Z

    .line 103
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Ldolphin/webkit/WebViewImpl;->awakenScrollBars(IZ)Z
    invoke-static {v0, p1, p2}, Ldolphin/webkit/WebViewImpl;->access$1200(Ldolphin/webkit/WebViewImpl;IZ)Z

    .line 111
    return-void
.end method

.method public a(Landroid/view/ContextMenu;)V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V
    invoke-static {v0, p1}, Ldolphin/webkit/WebViewImpl;->access$2001(Ldolphin/webkit/WebViewImpl;Landroid/view/ContextMenu;)V

    .line 379
    return-void
.end method

.method public a(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    invoke-static {v0, p1}, Ldolphin/webkit/WebViewImpl;->access$2101(Ldolphin/webkit/WebViewImpl;Landroid/view/View$OnCreateContextMenuListener;)V

    .line 384
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewImpl;->removeView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v0, p1}, Ldolphin/webkit/WebViewImpl;->access$901(Ldolphin/webkit/WebViewImpl;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method public a(Ldolphin/webkit/WebViewProvider;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 398
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # setter for: Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;
    invoke-static {v0, p1}, Ldolphin/webkit/WebViewImpl;->access$2302(Ldolphin/webkit/WebViewImpl;Ldolphin/webkit/WebViewProvider;)Ldolphin/webkit/WebViewProvider;

    .line 399
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # getter for: Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;
    invoke-static {v0}, Ldolphin/webkit/WebViewImpl;->access$2300(Ldolphin/webkit/WebViewImpl;)Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # setter for: Ldolphin/webkit/WebViewImpl;->mWebViewClasssic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewImpl;->access$2402(Ldolphin/webkit/WebViewImpl;Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewClassic;

    .line 408
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # getter for: Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;
    invoke-static {v0}, Ldolphin/webkit/WebViewImpl;->access$2300(Ldolphin/webkit/WebViewImpl;)Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    instance-of v0, v0, Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_1

    .line 404
    iget-object v1, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # getter for: Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;
    invoke-static {v0}, Ldolphin/webkit/WebViewImpl;->access$2300(Ldolphin/webkit/WebViewImpl;)Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    # setter for: Ldolphin/webkit/WebViewImpl;->mWebViewClasssic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v1, v0}, Ldolphin/webkit/WebViewImpl;->access$2402(Ldolphin/webkit/WebViewImpl;Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewClassic;

    goto :goto_0

    .line 406
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # setter for: Ldolphin/webkit/WebViewImpl;->mWebViewClasssic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewImpl;->access$2402(Ldolphin/webkit/WebViewImpl;Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewClassic;

    goto :goto_0
.end method

.method public a(IIII)Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Landroid/view/View;->setFrame(IIII)Z
    invoke-static {v0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewImpl;->access$501(Ldolphin/webkit/WebViewImpl;IIII)Z

    move-result v0

    return v0
.end method

.method public a(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z
    invoke-static {v0, p1, p2}, Ldolphin/webkit/WebViewImpl;->access$801(Ldolphin/webkit/WebViewImpl;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    invoke-static {v0, p1}, Ldolphin/webkit/WebViewImpl;->access$601(Ldolphin/webkit/WebViewImpl;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Ldolphin/webkit/WebViewImpl;->access$301(Ldolphin/webkit/WebViewImpl;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Landroid/view/View;->computeScroll()V
    invoke-static {v0}, Ldolphin/webkit/WebViewImpl;->access$201(Ldolphin/webkit/WebViewImpl;)V

    .line 65
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # setter for: Ldolphin/webkit/WebViewImpl;->mScrollX:I
    invoke-static {v0, p1}, Ldolphin/webkit/WebViewImpl;->access$1702(Ldolphin/webkit/WebViewImpl;I)I

    .line 137
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Ldolphin/webkit/WebViewImpl;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Ldolphin/webkit/WebViewImpl;->access$1500(Ldolphin/webkit/WebViewImpl;II)V

    .line 123
    return-void
.end method

.method public b(IIII)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewImpl;->onScrollChanged(IIII)V

    .line 127
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewImpl;->addView(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Ldolphin/webkit/WebViewImpl;->access$701(Ldolphin/webkit/WebViewImpl;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewImpl;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # setter for: Ldolphin/webkit/WebViewImpl;->mScrollY:I
    invoke-static {v0, p1}, Ldolphin/webkit/WebViewImpl;->access$1802(Ldolphin/webkit/WebViewImpl;I)I

    .line 142
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Landroid/view/View;->performLongClick()Z
    invoke-static {v0}, Ldolphin/webkit/WebViewImpl;->access$401(Ldolphin/webkit/WebViewImpl;)Z

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Ldolphin/webkit/WebViewImpl;->getVerticalScrollFactor()F
    invoke-static {v0}, Ldolphin/webkit/WebViewImpl;->access$1300(Ldolphin/webkit/WebViewImpl;)F

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Ldolphin/webkit/WebViewImpl;->setEmbeddedTitleBar(Landroid/view/View;)V
    invoke-static {v0, p1}, Ldolphin/webkit/WebViewImpl;->access$1900(Ldolphin/webkit/WebViewImpl;Landroid/view/View;)V

    .line 369
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Ldolphin/webkit/WebViewImpl;->getHorizontalScrollbarHeight()I
    invoke-static {v0}, Ldolphin/webkit/WebViewImpl;->access$1600(Ldolphin/webkit/WebViewImpl;)I

    move-result v0

    return v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    return-object v0
.end method

.method public g()Landroid/view/View;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewImpl;->getTitleBar()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    # invokes: Ldolphin/webkit/WebViewImpl;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    invoke-static {v0}, Ldolphin/webkit/WebViewImpl;->access$2200(Ldolphin/webkit/WebViewImpl;)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Ldolphin/webkit/kk;->a:Ldolphin/webkit/WebViewImpl;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewImpl;->getTitleHeight()I

    move-result v0

    return v0
.end method
