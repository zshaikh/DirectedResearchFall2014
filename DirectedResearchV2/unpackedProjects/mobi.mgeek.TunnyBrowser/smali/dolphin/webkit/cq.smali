.class public Ldolphin/webkit/cq;
.super Ljava/lang/Object;
.source "GLWebView.java"

# interfaces
.implements Ldolphin/webkit/ia;


# instance fields
.field final synthetic a:Ldolphin/webkit/GLWebView;


# direct methods
.method public constructor <init>(Ldolphin/webkit/GLWebView;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Landroid/view/View;->getScrollBarStyle()I
    invoke-static {v0}, Ldolphin/webkit/GLWebView;->access$001(Ldolphin/webkit/GLWebView;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Ldolphin/webkit/GLWebView;->awakenScrollBars(I)Z
    invoke-static {v0, p1}, Ldolphin/webkit/GLWebView;->access$1100(Ldolphin/webkit/GLWebView;I)Z

    .line 107
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Landroid/view/View;->scrollTo(II)V
    invoke-static {v0, p1, p2}, Ldolphin/webkit/GLWebView;->access$101(Ldolphin/webkit/GLWebView;II)V

    .line 61
    return-void
.end method

.method public a(IIIIIIIIZ)V
    .locals 10

    .prologue
    .line 101
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    # invokes: Ldolphin/webkit/GLWebView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v0 .. v9}, Ldolphin/webkit/GLWebView;->access$1000(Ldolphin/webkit/GLWebView;IIIIIIIIZ)Z

    .line 103
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Ldolphin/webkit/GLWebView;->awakenScrollBars(IZ)Z
    invoke-static {v0, p1, p2}, Ldolphin/webkit/GLWebView;->access$1200(Ldolphin/webkit/GLWebView;IZ)Z

    .line 111
    return-void
.end method

.method public a(Landroid/view/ContextMenu;)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V
    invoke-static {v0, p1}, Ldolphin/webkit/GLWebView;->access$1901(Ldolphin/webkit/GLWebView;Landroid/view/ContextMenu;)V

    .line 381
    return-void
.end method

.method public a(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    invoke-static {v0, p1}, Ldolphin/webkit/GLWebView;->access$2001(Ldolphin/webkit/GLWebView;Landroid/view/View$OnCreateContextMenuListener;)V

    .line 386
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v0, p1}, Ldolphin/webkit/GLWebView;->access$901(Ldolphin/webkit/GLWebView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method public a(Ldolphin/webkit/WebViewProvider;)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    check-cast p1, Ldolphin/webkit/WebViewClassic;

    # setter for: Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;
    invoke-static {v0, p1}, Ldolphin/webkit/GLWebView;->access$2202(Ldolphin/webkit/GLWebView;Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewClassic;

    .line 401
    return-void
.end method

.method public a(IIII)Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Landroid/view/SurfaceView;->setFrame(IIII)Z
    invoke-static {v0, p1, p2, p3, p4}, Ldolphin/webkit/GLWebView;->access$501(Ldolphin/webkit/GLWebView;IIII)Z

    move-result v0

    return v0
.end method

.method public a(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z
    invoke-static {v0, p1, p2}, Ldolphin/webkit/GLWebView;->access$801(Ldolphin/webkit/GLWebView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    invoke-static {v0, p1}, Ldolphin/webkit/GLWebView;->access$601(Ldolphin/webkit/GLWebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Ldolphin/webkit/GLWebView;->access$301(Ldolphin/webkit/GLWebView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Landroid/view/View;->computeScroll()V
    invoke-static {v0}, Ldolphin/webkit/GLWebView;->access$201(Ldolphin/webkit/GLWebView;)V

    .line 65
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # setter for: Ldolphin/webkit/GLWebView;->mScrollX:I
    invoke-static {v0, p1}, Ldolphin/webkit/GLWebView;->access$1702(Ldolphin/webkit/GLWebView;I)I

    .line 137
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Ldolphin/webkit/GLWebView;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Ldolphin/webkit/GLWebView;->access$1500(Ldolphin/webkit/GLWebView;II)V

    .line 123
    return-void
.end method

.method public b(IIII)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Ldolphin/webkit/GLWebView;->onScrollChanged(IIII)V

    .line 127
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Ldolphin/webkit/GLWebView;->access$701(Ldolphin/webkit/GLWebView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 154
    const/4 v0, -0x1

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # setter for: Ldolphin/webkit/GLWebView;->mScrollY:I
    invoke-static {v0, p1}, Ldolphin/webkit/GLWebView;->access$1802(Ldolphin/webkit/GLWebView;I)I

    .line 142
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Landroid/view/View;->performLongClick()Z
    invoke-static {v0}, Ldolphin/webkit/GLWebView;->access$401(Ldolphin/webkit/GLWebView;)Z

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Ldolphin/webkit/GLWebView;->getVerticalScrollFactor()F
    invoke-static {v0}, Ldolphin/webkit/GLWebView;->access$1300(Ldolphin/webkit/GLWebView;)F

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Ldolphin/webkit/GLWebView;->getHorizontalScrollbarHeight()I
    invoke-static {v0}, Ldolphin/webkit/GLWebView;->access$1600(Ldolphin/webkit/GLWebView;)I

    move-result v0

    return v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    return-object v0
.end method

.method public g()Landroid/view/View;
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Ldolphin/webkit/cq;->a:Ldolphin/webkit/GLWebView;

    # invokes: Ldolphin/webkit/GLWebView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    invoke-static {v0}, Ldolphin/webkit/GLWebView;->access$2100(Ldolphin/webkit/GLWebView;)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method
