.class final Lcom/vungle/sdk/l;
.super Landroid/widget/FrameLayout;
.source "vungle"


# instance fields
.field private final a:D

.field private final b:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const-wide/high16 v0, 0x3ff0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    iput-wide v0, p0, Lcom/vungle/sdk/l;->a:D

    .line 12
    iput-wide v0, p0, Lcom/vungle/sdk/l;->b:D

    .line 16
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 29
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 31
    int-to-double v2, v0

    .line 35
    int-to-double v4, v1

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 36
    int-to-double v2, v1

    double-to-int v0, v2

    move v7, v1

    move v1, v0

    move v0, v7

    .line 43
    :goto_0
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 46
    return-void

    .line 39
    :cond_0
    double-to-int v1, v2

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0
.end method
