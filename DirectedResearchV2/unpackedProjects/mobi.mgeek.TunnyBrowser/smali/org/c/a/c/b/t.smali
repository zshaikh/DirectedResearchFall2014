.class public Lorg/c/a/c/b/t;
.super Ljava/lang/Object;
.source "SslConnection.java"

# interfaces
.implements Lorg/c/a/c/e;


# instance fields
.field final synthetic a:Lorg/c/a/c/b/q;


# direct methods
.method public constructor <init>(Lorg/c/a/c/b/q;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/c/f;)I
    .locals 3

    .prologue
    .line 677
    invoke-interface {p1}, Lorg/c/a/c/f;->m()I

    move-result v0

    .line 678
    iget-object v1, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/b/q;Lorg/c/a/c/f;Lorg/c/a/c/f;)Z

    .line 680
    invoke-interface {p1}, Lorg/c/a/c/f;->m()I

    move-result v1

    sub-int v0, v1, v0

    .line 682
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/c/a/c/b/t;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    const/4 v0, -0x1

    .line 684
    :cond_0
    return v0
.end method

.method public a(Lorg/c/a/c/f;Lorg/c/a/c/f;Lorg/c/a/c/f;)I
    .locals 1

    .prologue
    .line 696
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0, p1}, Lorg/c/a/c/b/t;->b(Lorg/c/a/c/f;)I

    move-result v0

    .line 702
    :goto_0
    return v0

    .line 698
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {p0, p2}, Lorg/c/a/c/b/t;->b(Lorg/c/a/c/f;)I

    move-result v0

    goto :goto_0

    .line 700
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    invoke-virtual {p0, p3}, Lorg/c/a/c/b/t;->b(Lorg/c/a/c/f;)I

    move-result v0

    goto :goto_0

    .line 702
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->b(Lorg/c/a/c/b/q;)Lorg/c/a/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/c/a/c/e;->a(I)V

    .line 834
    return-void
.end method

.method public a(Lorg/c/a/c/r;)V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    check-cast p1, Lorg/c/a/c/b/a;

    invoke-static {v0, p1}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/b/q;Lorg/c/a/c/b/a;)Lorg/c/a/c/b/a;

    .line 844
    return-void
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->j(Lorg/c/a/c/b/q;)Lorg/c/a/c/s;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/c/a/c/s;->a(J)Z

    move-result v0

    return v0
.end method

.method public b(Lorg/c/a/c/f;)I
    .locals 3

    .prologue
    .line 689
    invoke-interface {p1}, Lorg/c/a/c/f;->m()I

    move-result v0

    .line 690
    iget-object v1, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/b/q;Lorg/c/a/c/f;Lorg/c/a/c/f;)Z

    .line 691
    invoke-interface {p1}, Lorg/c/a/c/f;->m()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public b()Lorg/c/a/c/r;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->m(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/a;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 635
    iget-object v1, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    monitor-enter v1

    .line 637
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->d(Lorg/c/a/c/b/q;)Lorg/c/a/d/c/d;

    move-result-object v0

    const-string v2, "{} ssl endp.oshut {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v5}, Lorg/c/a/c/b/q;->c(Lorg/c/a/c/b/q;)Ljavax/net/ssl/SSLSession;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-interface {v0, v2, v3}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/b/q;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 639
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/b/q;Z)Z

    .line 640
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    invoke-virtual {p0}, Lorg/c/a/c/b/t;->r()V

    .line 642
    return-void

    .line 640
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->b(Lorg/c/a/c/b/q;)Lorg/c/a/c/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/e;->d()V

    .line 744
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->b(Lorg/c/a/c/b/q;)Lorg/c/a/c/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/e;->e()V

    .line 749
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 646
    iget-object v1, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    monitor-enter v1

    .line 648
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->e(Lorg/c/a/c/b/q;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/c/a/c/b/t;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/b/q;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 5

    .prologue
    .line 654
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->d(Lorg/c/a/c/b/q;)Lorg/c/a/d/c/d;

    move-result-object v0

    const-string v1, "{} ssl endp.ishut!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v4}, Lorg/c/a/c/b/q;->c(Lorg/c/a/c/b/q;)Ljavax/net/ssl/SSLSession;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->b(Lorg/c/a/c/b/q;)Lorg/c/a/c/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/e;->h()V

    .line 754
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 661
    iget-object v1, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    monitor-enter v1

    .line 663
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->f(Lorg/c/a/c/b/q;)Lorg/c/a/c/s;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/s;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->g(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->g(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/b/e;->i()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->h(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->h(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/b/e;->i()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public j()V
    .locals 5

    .prologue
    .line 671
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->d(Lorg/c/a/c/b/q;)Lorg/c/a/d/c/d;

    move-result-object v0

    const-string v1, "{} ssl endp.close"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v4}, Lorg/c/a/c/b/q;->c(Lorg/c/a/c/b/q;)Ljavax/net/ssl/SSLSession;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->i(Lorg/c/a/c/b/q;)Lorg/c/a/c/s;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/s;->j()V

    .line 673
    return-void
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->l(Lorg/c/a/c/b/q;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->b(Lorg/c/a/c/b/q;)Lorg/c/a/c/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/e;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->b(Lorg/c/a/c/b/q;)Lorg/c/a/c/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/e;->m()I

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->b(Lorg/c/a/c/b/q;)Lorg/c/a/c/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/e;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->b(Lorg/c/a/c/b/q;)Lorg/c/a/c/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/e;->o()I

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->k(Lorg/c/a/c/b/q;)Lorg/c/a/c/s;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/s;->q()Z

    move-result v0

    return v0
.end method

.method public r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 738
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0, v1, v1}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/b/q;Lorg/c/a/c/f;Lorg/c/a/c/f;)Z

    .line 739
    return-void
.end method

.method public s()I
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v0}, Lorg/c/a/c/b/q;->b(Lorg/c/a/c/b/q;)Lorg/c/a/c/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/e;->s()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, -0x1

    .line 851
    iget-object v1, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v1}, Lorg/c/a/c/b/q;->h(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/e;

    move-result-object v1

    .line 852
    iget-object v2, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v2}, Lorg/c/a/c/b/q;->n(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/e;

    move-result-object v3

    .line 853
    iget-object v2, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v2}, Lorg/c/a/c/b/q;->g(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/e;

    move-result-object v4

    .line 854
    if-nez v1, :cond_0

    move v2, v0

    .line 855
    :goto_0
    if-nez v3, :cond_1

    move v1, v0

    .line 856
    :goto_1
    if-nez v4, :cond_2

    .line 857
    :goto_2
    const-string v3, "SSL %s i/o/u=%d/%d/%d ishut=%b oshut=%b {%s}"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v6}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/b/q;)Ljavax/net/ssl/SSLEngine;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x4

    iget-object v1, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v1}, Lorg/c/a/c/b/q;->o(Lorg/c/a/c/b/q;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v1}, Lorg/c/a/c/b/q;->e(Lorg/c/a/c/b/q;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lorg/c/a/c/b/t;->a:Lorg/c/a/c/b/q;

    invoke-static {v1}, Lorg/c/a/c/b/q;->m(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/a;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 854
    :cond_0
    invoke-interface {v1}, Lorg/c/a/c/f;->m()I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 855
    :cond_1
    invoke-interface {v3}, Lorg/c/a/c/f;->m()I

    move-result v1

    goto :goto_1

    .line 856
    :cond_2
    invoke-interface {v4}, Lorg/c/a/c/f;->m()I

    move-result v0

    goto :goto_2
.end method
