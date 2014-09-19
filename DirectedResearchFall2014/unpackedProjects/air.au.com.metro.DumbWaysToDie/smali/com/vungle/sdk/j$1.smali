.class final Lcom/vungle/sdk/j$1;
.super Landroid/os/Handler;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/j;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/j;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/high16 v2, 0x447a

    .line 443
    iget-object v0, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->n(Lcom/vungle/sdk/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 447
    iget-object v1, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v1}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 448
    iget-object v2, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v2}, Lcom/vungle/sdk/j;->o(Lcom/vungle/sdk/j;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 451
    :try_start_0
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->p(Lcom/vungle/sdk/j;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 452
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->q(Lcom/vungle/sdk/j;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 454
    :cond_2
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->r(Lcom/vungle/sdk/j;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 455
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->s(Lcom/vungle/sdk/j;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->s(Lcom/vungle/sdk/j;)Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, 0x4000

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 459
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 494
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-object v2, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v2}, Lcom/vungle/sdk/j;->i(Lcom/vungle/sdk/j;)Lcom/vungle/sdk/j$g;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/vungle/sdk/j$g;->a(FF)V

    goto :goto_0

    .line 463
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->j(Lcom/vungle/sdk/j;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->k(Lcom/vungle/sdk/j;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->p(Lcom/vungle/sdk/j;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 464
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 465
    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 466
    iget-object v4, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v4}, Lcom/vungle/sdk/j;->q(Lcom/vungle/sdk/j;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 468
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->t(Lcom/vungle/sdk/j;)Z

    .line 469
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->q(Lcom/vungle/sdk/j;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 470
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->q(Lcom/vungle/sdk/j;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->bringToFront()V

    .line 473
    :cond_4
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->r(Lcom/vungle/sdk/j;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->u(Lcom/vungle/sdk/j;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_5

    .line 474
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 475
    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 476
    iget-object v4, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v4}, Lcom/vungle/sdk/j;->s(Lcom/vungle/sdk/j;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 478
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->v(Lcom/vungle/sdk/j;)Z

    .line 479
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->s(Lcom/vungle/sdk/j;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->s(Lcom/vungle/sdk/j;)Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, 0x4000

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x100

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 481
    iget-object v3, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v3}, Lcom/vungle/sdk/j;->s(Lcom/vungle/sdk/j;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->bringToFront()V

    .line 485
    :cond_5
    sub-float v3, v1, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Video ends in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " second"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    const-string v3, ""

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 487
    iget-object v4, p0, Lcom/vungle/sdk/j$1;->a:Lcom/vungle/sdk/j;

    invoke-static {v4}, Lcom/vungle/sdk/j;->s(Lcom/vungle/sdk/j;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 486
    :cond_6
    :try_start_2
    const-string v3, "s"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
