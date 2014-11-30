.class Ldolphin/webkit/ib;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ldolphin/webkit/WebView$IViewImpl;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebView;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebView;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/ia;->b(Landroid/view/View;)V

    .line 417
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/ia;->b(Landroid/view/View;)V

    .line 412
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/ia;->b(Landroid/view/View;)V

    .line 407
    return-void
.end method

.method public awakenScrollBars(I)Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/ia;->a(I)V

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public awakenScrollBars(IZ)Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/ia;->a(IZ)V

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    invoke-virtual {v0}, Ldolphin/webkit/WebView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ia;->e()I

    move-result v0

    return v0
.end method

.method public getVerticalScrollFactor()F
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ia;->d()F

    move-result v0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 336
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 10

    .prologue
    .line 365
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ldolphin/webkit/ia;->a(IIIIIIIIZ)V

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/ia;->a(Landroid/view/View;)V

    .line 403
    return-void
.end method

.method public setMeasureDimension(II)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/ia;->b(II)V

    .line 388
    return-void
.end method

.method public setScrollX(I)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/ia;->b(I)V

    .line 347
    return-void
.end method

.method public setScrollY(I)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/ia;->c(I)V

    .line 352
    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/ia;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superPerformLongClick()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ia;->c()Z

    move-result v0

    return v0
.end method

.method public superRequestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Ldolphin/webkit/ib;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/ia;->a(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method
