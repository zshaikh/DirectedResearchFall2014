.class public Lcom/dolphin/browser/ui/PageView;
.super Landroid/widget/LinearLayout;
.source "PageView.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/PageView;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/PageView;->setFocusable(Z)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/PageView;->setVerticalScrollBarEnabled(Z)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/PageView;->setHorizontalScrollBarEnabled(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    iget v0, p0, Lcom/dolphin/browser/ui/PageView;->a:I

    if-nez v0, :cond_0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/ui/PageView;->b:I

    iget v1, p0, Lcom/dolphin/browser/ui/PageView;->a:I

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 58
    iput v2, p0, Lcom/dolphin/browser/ui/PageView;->a:I

    .line 59
    iput v2, p0, Lcom/dolphin/browser/ui/PageView;->b:I

    goto :goto_0
.end method
