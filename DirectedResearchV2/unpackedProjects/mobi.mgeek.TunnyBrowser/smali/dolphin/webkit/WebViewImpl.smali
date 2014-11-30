.class public Ldolphin/webkit/WebViewImpl;
.super Landroid/widget/AbsoluteLayout;
.source "WebViewImpl.java"

# interfaces
.implements Ldolphin/webkit/jf;


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final ADJUST_ANGLE_THRESHOLD:D = 30.0

.field private static final MAX_DISTANCE_FOR_ORIENTATION:I = 0x14

.field public static final ORIENTATION_HORIZONTAL:I = 0x1

.field public static final ORIENTATION_UNKNOWN:I = 0x0

.field public static final ORIENTATION_VIRTICAL:I = 0x2


# instance fields
.field private mDowneEvent:Landroid/view/MotionEvent;

.field public mOnTouchOrientation:I

.field private mPrivateAccess:Ldolphin/webkit/ia;

.field private mProvider:Ldolphin/webkit/WebViewProvider;

.field private mTitleBar:Landroid/view/View;

.field private mWebView:Ldolphin/webkit/WebView;

.field private mWebViewClasssic:Ldolphin/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldolphin/webkit/WebView;)V
    .locals 2

    .prologue
    .line 426
    const/4 v0, 0x0

    const v1, 0x1010085

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 727
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/WebViewImpl;->mOnTouchOrientation:I

    .line 427
    iput-object p2, p0, Ldolphin/webkit/WebViewImpl;->mWebView:Ldolphin/webkit/WebView;

    .line 428
    return-void
.end method

.method static synthetic access$001(Ldolphin/webkit/WebViewImpl;)I
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Ldolphin/webkit/WebViewImpl;IIIIIIIIZ)Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual/range {p0 .. p9}, Ldolphin/webkit/WebViewImpl;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$101(Ldolphin/webkit/WebViewImpl;II)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method static synthetic access$1100(Ldolphin/webkit/WebViewImpl;I)Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Ldolphin/webkit/WebViewImpl;->awakenScrollBars(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ldolphin/webkit/WebViewImpl;IZ)Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/WebViewImpl;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Ldolphin/webkit/WebViewImpl;)F
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ldolphin/webkit/WebViewImpl;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Ldolphin/webkit/WebViewImpl;)F
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ldolphin/webkit/WebViewImpl;->getHorizontalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Ldolphin/webkit/WebViewImpl;II)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/WebViewImpl;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1600(Ldolphin/webkit/WebViewImpl;)I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ldolphin/webkit/WebViewImpl;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Ldolphin/webkit/WebViewImpl;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Ldolphin/webkit/WebViewImpl;->mScrollX:I

    return p1
.end method

.method static synthetic access$1802(Ldolphin/webkit/WebViewImpl;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Ldolphin/webkit/WebViewImpl;->mScrollY:I

    return p1
.end method

.method static synthetic access$1900(Ldolphin/webkit/WebViewImpl;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewImpl;->setEmbeddedTitleBar(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2001(Ldolphin/webkit/WebViewImpl;Landroid/view/ContextMenu;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method

.method static synthetic access$201(Ldolphin/webkit/WebViewImpl;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method static synthetic access$2101(Ldolphin/webkit/WebViewImpl;Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method static synthetic access$2200(Ldolphin/webkit/WebViewImpl;)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ldolphin/webkit/WebViewImpl;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Ldolphin/webkit/WebViewImpl;)Ldolphin/webkit/WebViewProvider;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    return-object v0
.end method

.method static synthetic access$2302(Ldolphin/webkit/WebViewImpl;Ldolphin/webkit/WebViewProvider;)Ldolphin/webkit/WebViewProvider;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    return-object p1
.end method

.method static synthetic access$2402(Ldolphin/webkit/WebViewImpl;Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewClassic;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Ldolphin/webkit/WebViewImpl;->mWebViewClasssic:Ldolphin/webkit/WebViewClassic;

    return-object p1
.end method

.method static synthetic access$301(Ldolphin/webkit/WebViewImpl;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$401(Ldolphin/webkit/WebViewImpl;)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$501(Ldolphin/webkit/WebViewImpl;IIII)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$601(Ldolphin/webkit/WebViewImpl;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$701(Ldolphin/webkit/WebViewImpl;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$801(Ldolphin/webkit/WebViewImpl;ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$901(Ldolphin/webkit/WebViewImpl;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getAngleControlMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x2

    const-wide/high16 v11, 0x4000000000000000L

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 779
    .line 781
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mDowneEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_9

    .line 782
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Ldolphin/webkit/WebViewImpl;->mDowneEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v2, v0, v2

    .line 783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Ldolphin/webkit/WebViewImpl;->mDowneEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    .line 785
    :goto_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 786
    iget v3, p0, Ldolphin/webkit/WebViewImpl;->mOnTouchOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 822
    :cond_0
    :goto_1
    return-object v6

    .line 788
    :pswitch_0
    float-to-double v7, v2

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double v9, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4034000000000000L

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    cmpg-double v3, v7, v9

    if-gez v3, :cond_1

    .line 789
    neg-float v1, v2

    neg-float v0, v0

    invoke-virtual {v6, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 792
    :cond_1
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    .line 793
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_2

    move v5, v4

    .line 794
    :cond_2
    if-eqz v3, :cond_3

    if-nez v5, :cond_0

    .line 797
    :cond_3
    float-to-double v7, v2

    float-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    .line 798
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    .line 799
    const-wide/high16 v9, 0x404e000000000000L

    cmpl-double v9, v7, v9

    if-lez v9, :cond_6

    const-wide/high16 v9, 0x405e000000000000L

    cmpg-double v7, v7, v9

    if-gez v7, :cond_6

    .line 800
    iput v4, p0, Ldolphin/webkit/WebViewImpl;->mOnTouchOrientation:I

    .line 804
    :goto_3
    if-eqz v3, :cond_7

    .line 805
    iput v13, p0, Ldolphin/webkit/WebViewImpl;->mOnTouchOrientation:I

    .line 809
    :cond_4
    :goto_4
    iget v3, p0, Ldolphin/webkit/WebViewImpl;->mOnTouchOrientation:I

    if-ne v3, v4, :cond_8

    .line 810
    neg-float v0, v0

    invoke-virtual {v6, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    :cond_5
    move v3, v5

    .line 792
    goto :goto_2

    .line 802
    :cond_6
    iput v13, p0, Ldolphin/webkit/WebViewImpl;->mOnTouchOrientation:I

    goto :goto_3

    .line 806
    :cond_7
    if-eqz v5, :cond_4

    .line 807
    iput v4, p0, Ldolphin/webkit/WebViewImpl;->mOnTouchOrientation:I

    goto :goto_4

    .line 811
    :cond_8
    iget v0, p0, Ldolphin/webkit/WebViewImpl;->mOnTouchOrientation:I

    if-ne v0, v13, :cond_0

    .line 812
    neg-float v0, v2

    invoke-virtual {v6, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 816
    :pswitch_1
    neg-float v0, v0

    invoke-virtual {v6, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 819
    :pswitch_2
    neg-float v0, v2

    invoke-virtual {v6, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    :cond_9
    move v0, v1

    move v2, v1

    goto :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isZoomOut()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 737
    iget v1, p0, Ldolphin/webkit/WebViewImpl;->mScrollX:I

    if-lez v1, :cond_1

    .line 747
    :cond_0
    :goto_0
    return v0

    .line 740
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/WebViewImpl;->mWebViewClasssic:Ldolphin/webkit/WebViewClassic;

    if-eqz v1, :cond_2

    .line 741
    iget-object v1, p0, Ldolphin/webkit/WebViewImpl;->mWebViewClasssic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->getScale()F

    move-result v1

    .line 742
    iget-object v2, p0, Ldolphin/webkit/WebViewImpl;->mWebViewClasssic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->X()F

    move-result v2

    .line 743
    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 747
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 681
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mTitleBar:Landroid/view/View;

    if-ne v0, p1, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 705
    :cond_1
    :goto_0
    return-void

    .line 686
    :cond_2
    if-eqz p1, :cond_3

    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 688
    if-eqz v0, :cond_3

    .line 689
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 693
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 694
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mTitleBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Ldolphin/webkit/WebViewImpl;->removeView(Landroid/view/View;)V

    .line 696
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->isInGameMode()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_1

    .line 699
    :cond_5
    if-eqz p1, :cond_6

    .line 700
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Ldolphin/webkit/WebViewImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    :cond_6
    iput-object p1, p0, Ldolphin/webkit/WebViewImpl;->mTitleBar:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->y()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->x()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->E()V

    .line 510
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->B()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->A()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->z()I

    move-result v0

    return v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mWebView:Ldolphin/webkit/WebView;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebView;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 841
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/WebViewImpl;->mOnTouchOrientation:I

    .line 756
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .prologue
    .line 709
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mTitleBar:Landroid/view/View;

    if-eq p2, v0, :cond_0

    .line 710
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 723
    :goto_0
    return v0

    .line 715
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mTitleBar:Landroid/view/View;

    invoke-virtual {p0}, Ldolphin/webkit/WebViewImpl;->getScrollX()I

    move-result v1

    iget-object v2, p0, Ldolphin/webkit/WebViewImpl;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 716
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 717
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mWebViewClasssic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mWebViewClasssic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->a(Landroid/graphics/Canvas;)V

    .line 720
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 721
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method getPrivateAccess()Ldolphin/webkit/ia;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mPrivateAccess:Ldolphin/webkit/ia;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ldolphin/webkit/kk;

    invoke-direct {v0, p0}, Ldolphin/webkit/kk;-><init>(Ldolphin/webkit/WebViewImpl;)V

    iput-object v0, p0, Ldolphin/webkit/WebViewImpl;->mPrivateAccess:Ldolphin/webkit/ia;

    .line 438
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mPrivateAccess:Ldolphin/webkit/ia;

    return-object v0
.end method

.method public getTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mTitleBar:Landroid/view/View;

    return-object v0
.end method

.method public getTitleHeight()I
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 450
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 451
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onAttachedToWindow()V

    .line 452
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 602
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onDetachedFromWindow()V

    .line 457
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 458
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 592
    return-void
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7

    .prologue
    .line 575
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 576
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 624
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 625
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

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
    .line 658
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 659
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onMeasure(II)V

    .line 660
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onOverScrolled(IIZZ)V

    .line 581
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 641
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 642
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onScrollChanged(IIII)V

    .line 643
    return-void
.end method

.method public onSetEmbeddedTitleBar(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 832
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 635
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 636
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onSizeChanged(IIII)V

    .line 637
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 611
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 612
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onVisibilityChanged(Landroid/view/View;I)V

    .line 613
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onWindowFocusChanged(Z)V

    .line 618
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 619
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 585
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowVisibilityChanged(I)V

    .line 586
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onWindowVisibilityChanged(I)V

    .line 587
    return-void
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->setBackgroundColor(I)V

    .line 669
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 673
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 674
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->setLayerType(ILandroid/graphics/Paint;)V

    .line 675
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mWebView:Ldolphin/webkit/WebView;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 846
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .prologue
    .line 467
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 471
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->setOverScrollMode(I)V

    .line 474
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->setScrollBarStyle(I)V

    .line 479
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 480
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Ldolphin/webkit/WebViewImpl;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method
