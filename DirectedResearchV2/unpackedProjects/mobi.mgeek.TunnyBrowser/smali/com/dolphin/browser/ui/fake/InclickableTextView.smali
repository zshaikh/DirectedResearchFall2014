.class public Lcom/dolphin/browser/ui/fake/InclickableTextView;
.super Landroid/widget/TextView;
.source "InclickableTextView.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/fake/InclickableTextView;->a:Z

    .line 37
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/fake/InclickableTextView;->b:Z

    .line 38
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/fake/InclickableTextView;->c:Z

    .line 20
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/fake/InclickableTextView;->a:Z

    .line 35
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/fake/InclickableTextView;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/ui/fake/InclickableTextView;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/InclickableTextView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/fake/InclickableTextView;->a:Z

    if-nez v0, :cond_1

    .line 25
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/fake/InclickableTextView;->c:Z

    .line 28
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iput-boolean v2, p0, Lcom/dolphin/browser/ui/fake/InclickableTextView;->b:Z

    .line 49
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/fake/InclickableTextView;->b:Z

    .line 47
    iput-boolean v2, p0, Lcom/dolphin/browser/ui/fake/InclickableTextView;->c:Z

    goto :goto_0
.end method
