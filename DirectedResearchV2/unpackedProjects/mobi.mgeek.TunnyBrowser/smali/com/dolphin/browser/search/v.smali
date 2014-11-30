.class public Lcom/dolphin/browser/search/v;
.super Landroid/widget/Filter;
.source "SuggestionAdapterBase.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/k;


# direct methods
.method protected constructor <init>(Lcom/dolphin/browser/search/k;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 500
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-boolean v0, v0, Lcom/dolphin/browser/search/k;->k:Z

    if-eqz v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    invoke-static {v0}, Lcom/dolphin/browser/search/k;->c(Lcom/dolphin/browser/search/k;)Lcom/dolphin/browser/search/t;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 512
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    invoke-static {v0}, Lcom/dolphin/browser/search/k;->c(Lcom/dolphin/browser/search/k;)Lcom/dolphin/browser/search/t;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/search/t;->b(Z)Z

    .line 514
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    new-instance v1, Lcom/dolphin/browser/search/t;

    iget-object v2, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    invoke-direct {v1, v2}, Lcom/dolphin/browser/search/t;-><init>(Lcom/dolphin/browser/search/k;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/search/k;->a(Lcom/dolphin/browser/search/k;Lcom/dolphin/browser/search/t;)Lcom/dolphin/browser/search/t;

    .line 515
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    invoke-static {v0}, Lcom/dolphin/browser/search/k;->c(Lcom/dolphin/browser/search/k;)Lcom/dolphin/browser/search/t;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 475
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/q;

    move v3, v2

    .line 477
    :goto_1
    invoke-virtual {v0}, Lcom/dolphin/browser/search/q;->c()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 478
    invoke-virtual {v0}, Lcom/dolphin/browser/search/q;->a()Lcom/dolphin/browser/search/w;

    move-result-object v4

    .line 479
    if-eqz v4, :cond_0

    .line 480
    invoke-virtual {v0}, Lcom/dolphin/browser/search/q;->a()Lcom/dolphin/browser/search/w;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/search/q;->d()Z

    .line 477
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 475
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 485
    :cond_2
    return-void
.end method

.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 410
    if-nez p1, :cond_0

    .line 411
    const-string v0, ""

    .line 417
    :goto_0
    return-object v0

    .line 413
    :cond_0
    check-cast p1, Lcom/dolphin/browser/search/w;

    .line 414
    iget-object v0, p1, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p1, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p1, Lcom/dolphin/browser/search/w;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    invoke-static {v0}, Lcom/dolphin/browser/search/k;->b(Lcom/dolphin/browser/search/k;)Lcom/dolphin/browser/search/r;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 443
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    invoke-static {v1}, Lcom/dolphin/browser/search/k;->b(Lcom/dolphin/browser/search/k;)Lcom/dolphin/browser/search/r;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/search/r;->a()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    invoke-static {v0, p1}, Lcom/dolphin/browser/search/k;->a(Lcom/dolphin/browser/search/k;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 446
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 447
    const/4 v0, 0x0

    .line 448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v2, v2, Lcom/dolphin/browser/search/k;->e:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 449
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->e:Ljava/util/List;

    .line 464
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v2, v2, Lcom/dolphin/browser/search/k;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 465
    :try_start_0
    iget-object v3, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iput-object v0, v3, Lcom/dolphin/browser/search/k;->g:Ljava/util/List;

    .line 466
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/k;->f()Lcom/dolphin/browser/search/z;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/dolphin/browser/search/z;->a()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 469
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 470
    return-object v1

    .line 451
    :cond_2
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/v;->a(Ljava/lang/CharSequence;)V

    .line 452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 453
    if-eqz p1, :cond_1

    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/q;

    .line 455
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/q;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 457
    :cond_3
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/search/v;->a(Ljava/util/List;)V

    .line 458
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    invoke-virtual {v0, v2, p1}, Lcom/dolphin/browser/search/k;->a(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    iget-object v2, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iput-object v0, v2, Lcom/dolphin/browser/search/k;->e:Ljava/util/List;

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    instance-of v0, v0, Lcom/dolphin/browser/search/z;

    if-eqz v0, :cond_0

    .line 491
    iget-object v1, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/search/z;

    iput-object v0, v1, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    .line 492
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v1, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    iget-object v1, v1, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/search/k;->a(Ljava/lang/CharSequence;Lcom/dolphin/browser/search/z;)V

    .line 493
    iget-object v0, p0, Lcom/dolphin/browser/search/v;->a:Lcom/dolphin/browser/search/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/k;->notifyDataSetChanged()V

    .line 496
    :cond_0
    return-void
.end method
