.class Lcom/dolphin/player/bg;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/dolphin/player/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 693
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-eqz v0, :cond_0

    .line 694
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 695
    float-to-double v0, v0

    iget-object v2, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v2, v2, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v2}, Lcom/dolphin/player/ag;->b()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 696
    invoke-static {v0, v1}, Lcom/dolphin/player/a/g;->a(D)Ljava/lang/String;

    move-result-object v0

    .line 697
    iget-object v1, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->g(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 704
    iget-object v0, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-nez v0, :cond_0

    .line 713
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->i()V

    .line 708
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 709
    float-to-double v0, v0

    iget-object v2, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v2, v2, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v2}, Lcom/dolphin/player/ag;->b()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 711
    iget-object v0, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->h(Lcom/dolphin/player/VideoPlayerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    iget-object v0, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->d(Lcom/dolphin/player/VideoPlayerView;Z)Z

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 717
    iget-object v0, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-nez v0, :cond_0

    .line 732
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->d(Lcom/dolphin/player/VideoPlayerView;Z)Z

    .line 721
    iget-object v0, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->n()V

    .line 725
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 726
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 727
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 728
    float-to-double v0, v0

    iget-object v2, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v2, v2, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v2}, Lcom/dolphin/player/ag;->b()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 729
    iget-object v2, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v2, v2, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/dolphin/player/ag;->a(I)V

    .line 730
    iget-object v0, p0, Lcom/dolphin/player/bg;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->h(Lcom/dolphin/player/VideoPlayerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
