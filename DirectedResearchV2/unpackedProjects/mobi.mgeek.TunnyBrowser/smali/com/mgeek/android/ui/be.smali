.class Lcom/mgeek/android/ui/be;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ThreeScreenScrollableView.java"


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/mgeek/android/ui/be;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 521
    iget-object v2, p0, Lcom/mgeek/android/ui/be;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-static {v2}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->a(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v0

    .line 525
    :cond_1
    cmpl-float v2, p3, v3

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/mgeek/android/ui/be;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-static {v2}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->b(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)I

    move-result v2

    if-lez v2, :cond_3

    .line 526
    iget-object v2, p0, Lcom/mgeek/android/ui/be;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-static {v2}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->c(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 527
    iget-object v0, p0, Lcom/mgeek/android/ui/be;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->b(Z)V

    move v0, v1

    .line 528
    goto :goto_0

    .line 529
    :cond_2
    iget-object v2, p0, Lcom/mgeek/android/ui/be;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-static {v2}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->c(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/mgeek/android/ui/be;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->a(Z)V

    move v0, v1

    .line 531
    goto :goto_0

    .line 533
    :cond_3
    cmpg-float v2, p3, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/mgeek/android/ui/be;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-static {v2}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->b(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)I

    move-result v2

    if-gez v2, :cond_0

    .line 534
    iget-object v2, p0, Lcom/mgeek/android/ui/be;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-static {v2}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->c(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)I

    move-result v2

    if-nez v2, :cond_4

    .line 535
    iget-object v0, p0, Lcom/mgeek/android/ui/be;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->b(Z)V

    move v0, v1

    .line 536
    goto :goto_0

    .line 537
    :cond_4
    iget-object v2, p0, Lcom/mgeek/android/ui/be;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-static {v2}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->c(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/mgeek/android/ui/be;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->c(Z)V

    move v0, v1

    .line 539
    goto :goto_0
.end method
