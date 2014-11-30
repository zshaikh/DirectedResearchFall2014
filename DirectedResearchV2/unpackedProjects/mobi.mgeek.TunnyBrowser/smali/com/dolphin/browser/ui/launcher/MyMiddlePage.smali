.class public Lcom/dolphin/browser/ui/launcher/MyMiddlePage;
.super Landroid/widget/FrameLayout;
.source "MyMiddlePage.java"


# instance fields
.field private a:Lcom/dolphin/browser/launcher/ca;

.field private b:Lcom/dolphin/browser/launcher/Workspace;

.field private c:Landroid/view/GestureDetector;

.field private d:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Lcom/dolphin/browser/ui/launcher/u;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/launcher/u;-><init>(Lcom/dolphin/browser/ui/launcher/MyMiddlePage;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->d:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Lcom/dolphin/browser/ui/launcher/u;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/launcher/u;-><init>(Lcom/dolphin/browser/ui/launcher/MyMiddlePage;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->d:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 44
    return-void
.end method

.method private a(Lcom/dolphin/browser/launcher/ca;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->a:Lcom/dolphin/browser/launcher/ca;

    if-eq v0, p1, :cond_0

    .line 66
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->a:Lcom/dolphin/browser/launcher/ca;

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->b:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/Workspace;->c(Lcom/dolphin/browser/launcher/ca;)V

    .line 68
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->invalidate()V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->b:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0, v1, v1}, Lcom/dolphin/browser/launcher/Workspace;->scrollTo(II)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->draw(Landroid/graphics/Canvas;)V

    .line 99
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->b:Lcom/dolphin/browser/launcher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/Workspace;->a(Z)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 49
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 50
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/Workspace;

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->b:Lcom/dolphin/browser/launcher/Workspace;

    .line 51
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->d:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->c:Landroid/view/GestureDetector;

    .line 52
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->setClickable(Z)V

    .line 53
    sget-object v0, Lcom/dolphin/browser/launcher/ca;->c:Lcom/dolphin/browser/launcher/ca;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->a(Lcom/dolphin/browser/launcher/ca;)V

    .line 60
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->setFocusableInTouchMode(Z)V

    .line 61
    return-void
.end method
