.class Lcom/dolphin/player/bh;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/dolphin/player/w;


# instance fields
.field final synthetic a:Lcom/dolphin/player/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->e(Lcom/dolphin/player/VideoPlayerView;Z)V

    .line 748
    return-void
.end method

.method public a(DDD)V
    .locals 7

    .prologue
    .line 871
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->C(Lcom/dolphin/player/VideoPlayerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/VideoPlayerView;DDD)V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->s(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->s(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bm;

    move-result-object v0

    double-to-int v3, p3

    move-wide v1, p5

    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/player/bm;->a(DID)V

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    double-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/dolphin/player/VideoPlayerView;->d(Lcom/dolphin/player/VideoPlayerView;J)J

    .line 880
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 754
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->f(Lcom/dolphin/player/VideoPlayerView;Z)V

    .line 755
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->i(Lcom/dolphin/player/VideoPlayerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->j(Lcom/dolphin/player/VideoPlayerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->k(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 759
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->l(Lcom/dolphin/player/VideoPlayerView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->f(Lcom/dolphin/player/VideoPlayerView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/dolphin/player/VideoPlayerView;->b(Lcom/dolphin/player/VideoPlayerView;J)J

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->d:Lcom/dolphin/player/ac;

    invoke-virtual {v0}, Lcom/dolphin/player/ac;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 764
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->d:Lcom/dolphin/player/ac;

    invoke-virtual {v0, v4}, Lcom/dolphin/player/ac;->setVisibility(I)V

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->h(Lcom/dolphin/player/VideoPlayerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 770
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->m(Lcom/dolphin/player/VideoPlayerView;)I

    move-result v0

    if-lez v0, :cond_2

    .line 771
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->n(Lcom/dolphin/player/VideoPlayerView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 772
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->n(Lcom/dolphin/player/VideoPlayerView;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->c(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bq;

    move-result-object v1

    iget-object v1, v1, Lcom/dolphin/player/bq;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v2}, Lcom/dolphin/player/VideoPlayerView;->m(Lcom/dolphin/player/VideoPlayerView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->o(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bn;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 776
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->o(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bn;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, v1, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v1}, Lcom/dolphin/player/ag;->b()D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v2, v2, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v2}, Lcom/dolphin/player/ag;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v3, v3, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v3}, Lcom/dolphin/player/ag;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/dolphin/player/bn;->a(III)V

    .line 779
    :cond_3
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 780
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/dolphin/player/x;->setVisibility(I)V

    .line 783
    :cond_4
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->q(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$drawable;->dpl_btn_pause:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->r(Lcom/dolphin/player/VideoPlayerView;)V

    .line 787
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->s(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bm;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 788
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->s(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bm;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/player/bm;->a()V

    .line 790
    :cond_5
    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 838
    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->k(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 840
    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->l(Lcom/dolphin/player/VideoPlayerView;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->y(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/br;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->z(Lcom/dolphin/player/VideoPlayerView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1, v5}, Lcom/dolphin/player/VideoPlayerView;->c(Lcom/dolphin/player/VideoPlayerView;Z)Z

    .line 842
    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->f(Lcom/dolphin/player/VideoPlayerView;)J

    .line 843
    const-string v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v3}, Lcom/dolphin/player/VideoPlayerView;->c(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bq;

    move-result-object v3

    iget-object v3, v3, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v3}, Lcom/dolphin/player/VideoPlayerView;->z(Lcom/dolphin/player/VideoPlayerView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 844
    iget-object v2, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v2}, Lcom/dolphin/player/VideoPlayerView;->y(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/br;

    move-result-object v2

    const-string v3, "shell_player"

    const-string v4, "play_error_vedio_load_failed"

    invoke-interface {v2, v3, v4, v1}, Lcom/dolphin/player/br;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/player/x;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 851
    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->h(Lcom/dolphin/player/VideoPlayerView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 852
    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/player/x;->a()V

    .line 853
    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/player/x;->setVisibility(I)V

    .line 866
    :goto_0
    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1, v0, p2}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/VideoPlayerView;II)V

    .line 867
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->a()D

    move-result-wide v0

    double-to-int v0, v0

    .line 857
    const/16 v1, -0x3ec

    if-ne p2, v1, :cond_2

    .line 858
    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->A(Lcom/dolphin/player/VideoPlayerView;)V

    .line 863
    :goto_1
    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, v1, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v1}, Lcom/dolphin/player/ag;->m()V

    goto :goto_0

    .line 861
    :cond_2
    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->B(Lcom/dolphin/player/VideoPlayerView;)V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->e(Lcom/dolphin/player/VideoPlayerView;Z)V

    .line 751
    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 816
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->d:Lcom/dolphin/player/ac;

    invoke-virtual {v0, v5}, Lcom/dolphin/player/ac;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->q(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$drawable;->dpl_btn_play:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 818
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->b()D

    move-result-wide v1

    .line 819
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->a()D

    move-result-wide v3

    .line 820
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->g(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v3, v4}, Lcom/dolphin/player/a/g;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->v(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/dolphin/player/a/g;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    const-wide/16 v3, 0x0

    cmpl-double v0, v1, v3

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->k(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/SeekBar;

    move-result-object v0

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0, v5}, Lcom/dolphin/player/VideoPlayerView;->e(Lcom/dolphin/player/VideoPlayerView;Z)V

    .line 827
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->h(Lcom/dolphin/player/VideoPlayerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 828
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->w(Lcom/dolphin/player/VideoPlayerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->x(Lcom/dolphin/player/VideoPlayerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 831
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->s(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->s(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bm;

    move-result-object v0

    double-to-int v3, v1

    move-wide v4, v1

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/player/bm;->a(DID)V

    .line 834
    :cond_1
    return-void
.end method

.method public c(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->q(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$drawable;->dpl_btn_play:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 885
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->e(Lcom/dolphin/player/VideoPlayerView;Z)V

    .line 886
    return-void
.end method

.method public d(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->q(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$drawable;->dpl_btn_pause:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 891
    return-void
.end method

.method public e(Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 794
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/player/x;->setVisibility(I)V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/VideoPlayerView;I)I

    .line 799
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->b(Lcom/dolphin/player/VideoPlayerView;I)I

    .line 800
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v2, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v2}, Lcom/dolphin/player/VideoPlayerView;->c(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bq;

    move-result-object v2

    iget-object v2, v2, Lcom/dolphin/player/bq;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/VideoPlayerView;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->c(Lcom/dolphin/player/VideoPlayerView;I)I

    .line 801
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->t(Lcom/dolphin/player/VideoPlayerView;)I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 802
    const-string v0, "Dolphin Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTotaloadintTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v2}, Lcom/dolphin/player/VideoPlayerView;->t(Lcom/dolphin/player/VideoPlayerView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0, v3}, Lcom/dolphin/player/VideoPlayerView;->c(Lcom/dolphin/player/VideoPlayerView;I)I

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->h(Lcom/dolphin/player/VideoPlayerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 808
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->q(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$drawable;->dpl_btn_play:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 810
    iget-object v0, p0, Lcom/dolphin/player/bh;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->u(Lcom/dolphin/player/VideoPlayerView;)V

    .line 812
    return-void
.end method
