.class public Lcom/dolphin/browser/share/VerticalFreeScrollView;
.super Landroid/widget/ScrollView;
.source "VerticalFreeScrollView.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/share/VerticalFreeScrollView;->a:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/share/VerticalFreeScrollView;->a:Z

    .line 28
    return-void
.end method


# virtual methods
.method public a(IILandroid/view/View;)V
    .locals 3

    .prologue
    .line 43
    instance-of v0, p3, Lcom/dolphin/browser/share/Spacer;

    if-eqz v0, :cond_1

    .line 44
    check-cast p3, Lcom/dolphin/browser/share/Spacer;

    invoke-virtual {p3, p1, p2}, Lcom/dolphin/browser/share/Spacer;->a(II)V

    .line 52
    :cond_0
    return-void

    .line 45
    :cond_1
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 46
    check-cast p3, Landroid/view/ViewGroup;

    .line 47
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 48
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 49
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->a(IILandroid/view/View;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/dolphin/browser/share/VerticalFreeScrollView;->a:Z

    .line 20
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 33
    invoke-virtual {p0}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->getMeasuredWidth()I

    move-result v0

    .line 35
    invoke-virtual {p0}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->getMeasuredHeight()I

    move-result v1

    .line 36
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->a(IILandroid/view/View;)V

    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 39
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-boolean v1, p0, Lcom/dolphin/browser/share/VerticalFreeScrollView;->a:Z

    if-eqz v1, :cond_0

    .line 57
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 60
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->scrollTo(II)V

    goto :goto_0
.end method
