.class final Lc/a/a/b/w;
.super Lc/a/a/c/b;
.source "ZonedChronology.java"


# instance fields
.field final a:Lc/a/a/c;

.field final b:Lc/a/a/i;

.field final c:Lc/a/a/l;

.field final d:Z

.field final e:Lc/a/a/l;

.field final f:Lc/a/a/l;


# direct methods
.method constructor <init>(Lc/a/a/c;Lc/a/a/i;Lc/a/a/l;Lc/a/a/l;Lc/a/a/l;)V
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p1}, Lc/a/a/c;->a()Lc/a/a/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/a/c/b;-><init>(Lc/a/a/d;)V

    .line 405
    invoke-virtual {p1}, Lc/a/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 408
    :cond_0
    iput-object p1, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    .line 409
    iput-object p2, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    .line 410
    iput-object p3, p0, Lc/a/a/b/w;->c:Lc/a/a/l;

    .line 411
    invoke-static {p3}, Lc/a/a/b/v;->a(Lc/a/a/l;)Z

    move-result v0

    iput-boolean v0, p0, Lc/a/a/b/w;->d:Z

    .line 412
    iput-object p4, p0, Lc/a/a/b/w;->e:Lc/a/a/l;

    .line 413
    iput-object p5, p0, Lc/a/a/b/w;->f:Lc/a/a/l;

    .line 414
    return-void
.end method

.method private j(J)I
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 607
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->b(J)I

    move-result v0

    .line 608
    int-to-long v1, v0

    add-long/2addr v1, p1

    .line 610
    xor-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    int-to-long v1, v0

    xor-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 611
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Adding time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_0
    return v0
.end method


# virtual methods
.method public a(J)I
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->d(J)J

    move-result-wide v0

    .line 422
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v0, v1}, Lc/a/a/c;->a(J)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v0, p1}, Lc/a/a/c;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public a(JI)J
    .locals 6

    .prologue
    .line 444
    iget-boolean v0, p0, Lc/a/a/b/w;->d:Z

    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0, p1, p2}, Lc/a/a/b/w;->j(J)I

    move-result v0

    .line 446
    iget-object v1, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3}, Lc/a/a/c;->a(JI)J

    move-result-wide v1

    .line 447
    int-to-long v3, v0

    sub-long v0, v1, v3

    .line 451
    :goto_0
    return-wide v0

    .line 449
    :cond_0
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->d(J)J

    move-result-wide v0

    .line 450
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v0, v1, p3}, Lc/a/a/c;->a(JI)J

    move-result-wide v1

    .line 451
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lc/a/a/i;->a(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(JJ)J
    .locals 6

    .prologue
    .line 456
    iget-boolean v0, p0, Lc/a/a/b/w;->d:Z

    if-eqz v0, :cond_0

    .line 457
    invoke-direct {p0, p1, p2}, Lc/a/a/b/w;->j(J)I

    move-result v0

    .line 458
    iget-object v1, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3, p4}, Lc/a/a/c;->a(JJ)J

    move-result-wide v1

    .line 459
    int-to-long v3, v0

    sub-long v0, v1, v3

    .line 463
    :goto_0
    return-wide v0

    .line 461
    :cond_0
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->d(J)J

    move-result-wide v0

    .line 462
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lc/a/a/c;->a(JJ)J

    move-result-wide v1

    .line 463
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lc/a/a/i;->a(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 6

    .prologue
    .line 494
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->d(J)J

    move-result-wide v0

    .line 495
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lc/a/a/c;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v1

    .line 496
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lc/a/a/i;->a(JZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->d(J)J

    move-result-wide v0

    .line 427
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v0, v1, p3}, Lc/a/a/c;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(JJ)I
    .locals 5

    .prologue
    .line 500
    invoke-direct {p0, p3, p4}, Lc/a/a/b/w;->j(J)I

    move-result v1

    .line 501
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    iget-boolean v0, p0, Lc/a/a/b/w;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v3, v0

    add-long/2addr v3, p1

    int-to-long v0, v1

    add-long/2addr v0, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Lc/a/a/c;->b(JJ)I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lc/a/a/b/w;->j(J)I

    move-result v0

    goto :goto_0
.end method

.method public b(JI)J
    .locals 6

    .prologue
    .line 480
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->d(J)J

    move-result-wide v0

    .line 481
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v0, v1, p3}, Lc/a/a/c;->b(JI)J

    move-result-wide v1

    .line 482
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lc/a/a/i;->a(JZJ)J

    move-result-wide v3

    .line 483
    invoke-virtual {p0, v3, v4}, Lc/a/a/b/w;->a(J)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 484
    new-instance v0, Lc/a/a/p;

    iget-object v3, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v3}, Lc/a/a/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/p;-><init>(JLjava/lang/String;)V

    .line 485
    new-instance v1, Lc/a/a/o;

    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2}, Lc/a/a/c;->a()Lc/a/a/d;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lc/a/a/p;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lc/a/a/o;-><init>(Lc/a/a/d;Ljava/lang/Number;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v1, v0}, Lc/a/a/o;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 487
    throw v1

    .line 489
    :cond_0
    return-wide v3
.end method

.method public b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->b(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->d(J)J

    move-result-wide v0

    .line 432
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v0, v1, p3}, Lc/a/a/c;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Z
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->d(J)J

    move-result-wide v0

    .line 523
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v0, v1}, Lc/a/a/c;->b(J)Z

    move-result v0

    return v0
.end method

.method public c(J)I
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->d(J)J

    move-result-wide v0

    .line 587
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v0, v1}, Lc/a/a/c;->c(J)I

    move-result v0

    return v0
.end method

.method public c(JJ)J
    .locals 5

    .prologue
    .line 507
    invoke-direct {p0, p3, p4}, Lc/a/a/b/w;->j(J)I

    move-result v1

    .line 508
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    iget-boolean v0, p0, Lc/a/a/b/w;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v3, v0

    add-long/2addr v3, p1

    int-to-long v0, v1

    add-long/2addr v0, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Lc/a/a/c;->c(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lc/a/a/b/w;->j(J)I

    move-result v0

    goto :goto_0
.end method

.method public d(J)J
    .locals 6

    .prologue
    .line 536
    iget-boolean v0, p0, Lc/a/a/b/w;->d:Z

    if-eqz v0, :cond_0

    .line 537
    invoke-direct {p0, p1, p2}, Lc/a/a/b/w;->j(J)I

    move-result v0

    .line 538
    iget-object v1, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lc/a/a/c;->d(J)J

    move-result-wide v1

    .line 539
    int-to-long v3, v0

    sub-long v0, v1, v3

    .line 543
    :goto_0
    return-wide v0

    .line 541
    :cond_0
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->d(J)J

    move-result-wide v0

    .line 542
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v0, v1}, Lc/a/a/c;->d(J)J

    move-result-wide v1

    .line 543
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lc/a/a/i;->a(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final d()Lc/a/a/l;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lc/a/a/b/w;->c:Lc/a/a/l;

    return-object v0
.end method

.method public e(J)J
    .locals 6

    .prologue
    .line 548
    iget-boolean v0, p0, Lc/a/a/b/w;->d:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-direct {p0, p1, p2}, Lc/a/a/b/w;->j(J)I

    move-result v0

    .line 550
    iget-object v1, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lc/a/a/c;->e(J)J

    move-result-wide v1

    .line 551
    int-to-long v3, v0

    sub-long v0, v1, v3

    .line 555
    :goto_0
    return-wide v0

    .line 553
    :cond_0
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->d(J)J

    move-result-wide v0

    .line 554
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v0, v1}, Lc/a/a/c;->e(J)J

    move-result-wide v1

    .line 555
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lc/a/a/i;->a(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final e()Lc/a/a/l;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lc/a/a/b/w;->e:Lc/a/a/l;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 618
    if-ne p0, p1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v0

    .line 620
    :cond_1
    instance-of v2, p1, Lc/a/a/b/w;

    if-eqz v2, :cond_3

    .line 621
    check-cast p1, Lc/a/a/b/w;

    .line 622
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    iget-object v3, p1, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    iget-object v3, p1, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v2, v3}, Lc/a/a/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc/a/a/b/w;->c:Lc/a/a/l;

    iget-object v3, p1, Lc/a/a/b/w;->c:Lc/a/a/l;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc/a/a/b/w;->e:Lc/a/a/l;

    iget-object v3, p1, Lc/a/a/b/w;->e:Lc/a/a/l;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 627
    goto :goto_0
.end method

.method public final f()Lc/a/a/l;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lc/a/a/b/w;->f:Lc/a/a/l;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->g()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->h()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v1}, Lc/a/a/i;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i(J)J
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lc/a/a/b/w;->b:Lc/a/a/i;

    invoke-virtual {v0, p1, p2}, Lc/a/a/i;->d(J)J

    move-result-wide v0

    .line 561
    iget-object v2, p0, Lc/a/a/b/w;->a:Lc/a/a/c;

    invoke-virtual {v2, v0, v1}, Lc/a/a/c;->i(J)J

    move-result-wide v0

    return-wide v0
.end method
