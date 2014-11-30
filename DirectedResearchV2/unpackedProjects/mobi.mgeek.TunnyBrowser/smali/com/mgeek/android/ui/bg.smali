.class Lcom/mgeek/android/ui/bg;
.super Landroid/os/Handler;
.source "ThreeScreenScrollableView.java"


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/bf;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/bf;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/mgeek/android/ui/bg;->a:Lcom/mgeek/android/ui/bf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x32

    const/16 v7, 0x3e9

    const/high16 v0, 0x3f800000

    .line 583
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 585
    :pswitch_0
    invoke-virtual {p0, v7, v8, v9}, Lcom/mgeek/android/ui/bg;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 588
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mgeek/android/ui/bg;->a:Lcom/mgeek/android/ui/bf;

    invoke-static {v3}, Lcom/mgeek/android/ui/bf;->a(Lcom/mgeek/android/ui/bf;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget-object v2, p0, Lcom/mgeek/android/ui/bg;->a:Lcom/mgeek/android/ui/bf;

    invoke-static {v2}, Lcom/mgeek/android/ui/bf;->b(Lcom/mgeek/android/ui/bf;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 589
    const-string v2, "ThreeScreenScrollableView"

    const-string v3, "Animation Ratio %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 590
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_1

    .line 592
    iget-object v1, p0, Lcom/mgeek/android/ui/bg;->a:Lcom/mgeek/android/ui/bf;

    invoke-static {v1}, Lcom/mgeek/android/ui/bf;->c(Lcom/mgeek/android/ui/bf;)V

    .line 597
    :goto_1
    iget-object v1, p0, Lcom/mgeek/android/ui/bg;->a:Lcom/mgeek/android/ui/bf;

    iget-object v2, p0, Lcom/mgeek/android/ui/bg;->a:Lcom/mgeek/android/ui/bf;

    invoke-static {v2}, Lcom/mgeek/android/ui/bf;->d(Lcom/mgeek/android/ui/bf;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mgeek/android/ui/bg;->a:Lcom/mgeek/android/ui/bf;

    invoke-static {v3}, Lcom/mgeek/android/ui/bf;->e(Lcom/mgeek/android/ui/bf;)I

    move-result v3

    iget-object v4, p0, Lcom/mgeek/android/ui/bg;->a:Lcom/mgeek/android/ui/bf;

    invoke-static {v4}, Lcom/mgeek/android/ui/bf;->d(Lcom/mgeek/android/ui/bf;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/mgeek/android/ui/bf;->a(Lcom/mgeek/android/ui/bf;I)I

    .line 598
    iget-object v0, p0, Lcom/mgeek/android/ui/bg;->a:Lcom/mgeek/android/ui/bf;

    iget-object v0, v0, Lcom/mgeek/android/ui/bf;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->requestLayout()V

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {p0, v7, v8, v9}, Lcom/mgeek/android/ui/bg;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    goto :goto_1

    .line 601
    :pswitch_2
    iget-object v0, p0, Lcom/mgeek/android/ui/bg;->a:Lcom/mgeek/android/ui/bf;

    iget-object v0, v0, Lcom/mgeek/android/ui/bf;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-static {v0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->d(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/mgeek/android/ui/bh;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/mgeek/android/ui/bg;->a:Lcom/mgeek/android/ui/bf;

    iget-object v0, v0, Lcom/mgeek/android/ui/bf;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-static {v0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->d(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/bh;

    invoke-interface {v0}, Lcom/mgeek/android/ui/bh;->b()V

    goto :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
