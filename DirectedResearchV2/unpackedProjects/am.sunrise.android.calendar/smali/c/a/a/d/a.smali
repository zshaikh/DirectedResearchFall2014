.class public Lc/a/a/d/a;
.super Ljava/lang/Object;
.source "DateTimeFormat.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc/a/a/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Lc/a/a/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lc/a/a/d/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lc/a/a/d/b;-><init>(I)V

    sput-object v0, Lc/a/a/d/a;->a:Ljava/util/Map;

    .line 166
    const/16 v0, 0x19

    new-array v0, v0, [Lc/a/a/d/c;

    sput-object v0, Lc/a/a/d/a;->b:[Lc/a/a/d/c;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lc/a/a/d/c;
    .locals 1

    .prologue
    .line 187
    invoke-static {p0}, Lc/a/a/d/a;->c(Ljava/lang/String;)Lc/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x61

    const/16 v9, 0x5a

    const/16 v8, 0x41

    const/16 v7, 0x27

    const/4 v1, 0x0

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    aget v2, p1, v1

    .line 594
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 596
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 597
    if-lt v0, v8, :cond_0

    if-le v0, v9, :cond_1

    :cond_0
    if-lt v0, v10, :cond_2

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_2

    .line 600
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v4, :cond_8

    .line 603
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 604
    if-ne v5, v0, :cond_8

    .line 605
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 606
    add-int/lit8 v2, v2, 0x1

    .line 610
    goto :goto_0

    .line 613
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 617
    :goto_1
    if-ge v2, v4, :cond_8

    .line 618
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 620
    if-ne v5, v7, :cond_5

    .line 621
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v4, :cond_3

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_3

    .line 623
    add-int/lit8 v2, v2, 0x1

    .line 624
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 617
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 626
    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    .line 628
    :cond_5
    if-nez v0, :cond_9

    if-lt v5, v8, :cond_6

    if-le v5, v9, :cond_7

    :cond_6
    if-lt v5, v10, :cond_9

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_9

    .line 630
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 638
    :cond_8
    aput v2, p1, v1

    .line 639
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 633
    :cond_9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static a(Lc/a/a/d/d;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 418
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 420
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    .line 421
    const/4 v1, 0x0

    aput v0, v7, v1

    .line 422
    invoke-static {p1, v7}, Lc/a/a/d/a;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 423
    const/4 v1, 0x0

    aget v8, v7, v1

    .line 425
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 426
    if-nez v1, :cond_1

    .line 580
    :cond_0
    return-void

    .line 429
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 431
    sparse-switch v2, :sswitch_data_0

    .line 576
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal pattern component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :sswitch_0
    invoke-virtual {p0}, Lc/a/a/d/d;->h()Lc/a/a/d/d;

    .line 420
    :goto_1
    add-int/lit8 v0, v8, 0x1

    goto :goto_0

    .line 436
    :sswitch_1
    invoke-virtual {p0, v1, v1}, Lc/a/a/d/d;->g(II)Lc/a/a/d/d;

    goto :goto_1

    .line 441
    :sswitch_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    .line 442
    const/4 v0, 0x1

    .line 445
    add-int/lit8 v1, v8, 0x1

    if-ge v1, v6, :cond_3

    .line 446
    const/4 v1, 0x0

    aget v3, v7, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v7, v1

    .line 447
    invoke-static {p1, v7}, Lc/a/a/d/a;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/d/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    const/4 v0, 0x0

    .line 453
    :cond_2
    const/4 v1, 0x0

    aget v3, v7, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v7, v1

    .line 457
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 465
    new-instance v1, Lc/a/a/b;

    invoke-direct {v1}, Lc/a/a/b;-><init>()V

    invoke-virtual {v1}, Lc/a/a/b;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    invoke-virtual {p0, v1, v0}, Lc/a/a/d/d;->a(IZ)Lc/a/a/d/d;

    goto :goto_1

    .line 459
    :pswitch_0
    new-instance v1, Lc/a/a/b;

    invoke-direct {v1}, Lc/a/a/b;-><init>()V

    invoke-virtual {v1}, Lc/a/a/b;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    invoke-virtual {p0, v1, v0}, Lc/a/a/d/d;->b(IZ)Lc/a/a/d/d;

    goto :goto_1

    .line 470
    :cond_4
    const/16 v0, 0x9

    .line 473
    add-int/lit8 v3, v8, 0x1

    if-ge v3, v6, :cond_6

    .line 474
    const/4 v3, 0x0

    aget v4, v7, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v7, v3

    .line 475
    invoke-static {p1, v7}, Lc/a/a/d/a;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/a/a/d/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 479
    :cond_5
    const/4 v3, 0x0

    aget v4, v7, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v7, v3

    .line 482
    :cond_6
    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    .line 490
    :sswitch_3
    invoke-virtual {p0, v1, v0}, Lc/a/a/d/d;->f(II)Lc/a/a/d/d;

    goto :goto_1

    .line 484
    :sswitch_4
    invoke-virtual {p0, v1, v0}, Lc/a/a/d/d;->d(II)Lc/a/a/d/d;

    goto :goto_1

    .line 487
    :sswitch_5
    invoke-virtual {p0, v1, v0}, Lc/a/a/d/d;->e(II)Lc/a/a/d/d;

    goto :goto_1

    .line 496
    :sswitch_6
    const/4 v0, 0x3

    if-lt v1, v0, :cond_8

    .line 497
    const/4 v0, 0x4

    if-lt v1, v0, :cond_7

    .line 498
    invoke-virtual {p0}, Lc/a/a/d/d;->f()Lc/a/a/d/d;

    goto/16 :goto_1

    .line 500
    :cond_7
    invoke-virtual {p0}, Lc/a/a/d/d;->g()Lc/a/a/d/d;

    goto/16 :goto_1

    .line 503
    :cond_8
    invoke-virtual {p0, v1}, Lc/a/a/d/d;->k(I)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 507
    :sswitch_7
    invoke-virtual {p0, v1}, Lc/a/a/d/d;->h(I)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 510
    :sswitch_8
    invoke-virtual {p0}, Lc/a/a/d/d;->c()Lc/a/a/d/d;

    goto/16 :goto_1

    .line 513
    :sswitch_9
    invoke-virtual {p0, v1}, Lc/a/a/d/d;->f(I)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 516
    :sswitch_a
    invoke-virtual {p0, v1}, Lc/a/a/d/d;->c(I)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 519
    :sswitch_b
    invoke-virtual {p0, v1}, Lc/a/a/d/d;->d(I)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 522
    :sswitch_c
    invoke-virtual {p0, v1}, Lc/a/a/d/d;->e(I)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 525
    :sswitch_d
    invoke-virtual {p0, v1}, Lc/a/a/d/d;->b(I)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 528
    :sswitch_e
    invoke-virtual {p0, v1}, Lc/a/a/d/d;->a(I)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 531
    :sswitch_f
    invoke-virtual {p0, v1, v1}, Lc/a/a/d/d;->a(II)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 534
    :sswitch_10
    invoke-virtual {p0, v1}, Lc/a/a/d/d;->g(I)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 537
    :sswitch_11
    const/4 v0, 0x4

    if-lt v1, v0, :cond_9

    .line 538
    invoke-virtual {p0}, Lc/a/a/d/d;->d()Lc/a/a/d/d;

    goto/16 :goto_1

    .line 540
    :cond_9
    invoke-virtual {p0}, Lc/a/a/d/d;->e()Lc/a/a/d/d;

    goto/16 :goto_1

    .line 544
    :sswitch_12
    invoke-virtual {p0, v1}, Lc/a/a/d/d;->i(I)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 547
    :sswitch_13
    invoke-virtual {p0, v1}, Lc/a/a/d/d;->j(I)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 550
    :sswitch_14
    const/4 v0, 0x4

    if-lt v1, v0, :cond_a

    .line 551
    invoke-virtual {p0}, Lc/a/a/d/d;->i()Lc/a/a/d/d;

    goto/16 :goto_1

    .line 553
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/a/a/d/d;->a(Ljava/util/Map;)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 557
    :sswitch_15
    const/4 v0, 0x1

    if-ne v1, v0, :cond_b

    .line 558
    const/4 v1, 0x0

    const-string v2, "Z"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;ZII)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 559
    :cond_b
    const/4 v0, 0x2

    if-ne v1, v0, :cond_c

    .line 560
    const/4 v1, 0x0

    const-string v2, "Z"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;ZII)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 562
    :cond_c
    invoke-virtual {p0}, Lc/a/a/d/d;->j()Lc/a/a/d/d;

    goto/16 :goto_1

    .line 566
    :sswitch_16
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 568
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lc/a/a/d/d;->a(C)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 572
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lc/a/a/d/d;->a(Ljava/lang/String;)Lc/a/a/d/d;

    goto/16 :goto_1

    .line 431
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_16
        0x43 -> :sswitch_1
        0x44 -> :sswitch_12
        0x45 -> :sswitch_11
        0x47 -> :sswitch_0
        0x48 -> :sswitch_a
        0x4b -> :sswitch_c
        0x4d -> :sswitch_6
        0x53 -> :sswitch_f
        0x59 -> :sswitch_2
        0x5a -> :sswitch_15
        0x61 -> :sswitch_8
        0x64 -> :sswitch_7
        0x65 -> :sswitch_10
        0x68 -> :sswitch_9
        0x6b -> :sswitch_b
        0x6d -> :sswitch_d
        0x73 -> :sswitch_e
        0x77 -> :sswitch_13
        0x78 -> :sswitch_2
        0x79 -> :sswitch_2
        0x7a -> :sswitch_14
    .end sparse-switch

    .line 457
    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch

    .line 482
    :sswitch_data_1
    .sparse-switch
        0x59 -> :sswitch_3
        0x78 -> :sswitch_4
        0x79 -> :sswitch_5
    .end sparse-switch
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 649
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 650
    if-lez v2, :cond_0

    .line 651
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 652
    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 679
    :goto_0
    :sswitch_0
    return v0

    .line 673
    :sswitch_1
    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 652
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x46 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4b -> :sswitch_0
        0x4d -> :sswitch_1
        0x53 -> :sswitch_0
        0x57 -> :sswitch_0
        0x59 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6b -> :sswitch_0
        0x6d -> :sswitch_0
        0x73 -> :sswitch_0
        0x77 -> :sswitch_0
        0x78 -> :sswitch_0
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method private static c(Ljava/lang/String;)Lc/a/a/d/c;
    .locals 3

    .prologue
    .line 691
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 692
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pattern specification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_1
    sget-object v1, Lc/a/a/d/a;->a:Ljava/util/Map;

    monitor-enter v1

    .line 696
    :try_start_0
    sget-object v0, Lc/a/a/d/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/d/c;

    .line 697
    if-nez v0, :cond_2

    .line 698
    new-instance v0, Lc/a/a/d/d;

    invoke-direct {v0}, Lc/a/a/d/d;-><init>()V

    .line 699
    invoke-static {v0, p0}, Lc/a/a/d/a;->a(Lc/a/a/d/d;Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Lc/a/a/d/d;->a()Lc/a/a/d/c;

    move-result-object v0

    .line 702
    sget-object v2, Lc/a/a/d/a;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    :cond_2
    monitor-exit v1

    .line 705
    return-object v0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
