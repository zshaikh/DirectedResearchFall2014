.class public abstract Lam/sunrise/android/calendar/ui/widgets/ak;
.super Ljava/lang/Object;
.source "ScrollFlinger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ak;->b:Landroid/widget/Scroller;

    .line 22
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/widgets/ak;->a:Landroid/view/View;

    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(II)Z
.end method

.method public b()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public b(II)V
    .locals 9

    .prologue
    .line 55
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ak;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/ak;->a()I

    move-result v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/ak;->d()I

    move-result v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/ak;->b()I

    move-result v5

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/ak;->c()I

    move-result v6

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/ak;->e()I

    move-result v7

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/ak;->f()I

    move-result v8

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 57
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ak;->a:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7fffffff

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7fffffff

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ak;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 62
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ak;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 63
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ak;->b:Landroid/widget/Scroller;

    .line 68
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 69
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 70
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    .line 72
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/ak;->a()I

    move-result v0

    sub-int/2addr v0, v1

    .line 77
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/ak;->d()I

    move-result v1

    sub-int/2addr v1, v2

    .line 79
    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/ak;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ak;->a:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
