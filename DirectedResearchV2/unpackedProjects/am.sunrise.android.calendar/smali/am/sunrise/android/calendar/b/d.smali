.class public Lam/sunrise/android/calendar/b/d;
.super Landroid/text/format/DateUtils;
.source "DateUtils.java"


# direct methods
.method public static a()Lam/sunrise/android/calendar/b/e;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lam/sunrise/android/calendar/b/e;

    invoke-direct {v0}, Lam/sunrise/android/calendar/b/e;-><init>()V

    return-object v0
.end method

.method public static a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 147
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/b/e;->a:Ljava/text/DateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "DateUtils"

    const-string v2, "formatDate(%s): EXCEPTION -- %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v5}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 152
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v10, 0xe10

    const-wide/32 v8, 0x15180

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 514
    cmp-long v0, p1, v3

    if-gtz v0, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 542
    :goto_0
    return-object v0

    .line 518
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 520
    cmp-long v1, p1, v10

    if-gez v1, :cond_1

    .line 521
    const v1, 0x7f0f018c

    new-array v2, v7, [Ljava/lang/Object;

    const-wide/16 v3, 0x3c

    div-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 524
    :cond_1
    cmp-long v1, p1, v8

    if-gez v1, :cond_2

    rem-long v1, p1, v10

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 525
    const v1, 0x7f0f0189

    new-array v2, v7, [Ljava/lang/Object;

    div-long v3, p1, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 528
    :cond_2
    cmp-long v1, p1, v8

    if-gez v1, :cond_3

    .line 529
    const v1, 0x7f0f018a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    div-long v3, p1, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const-wide/16 v3, 0x3c

    div-long v3, p1, v3

    const-wide/16 v5, 0x3c

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_3
    rem-long v1, p1, v8

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 534
    const v1, 0x7f0f0187

    new-array v2, v7, [Ljava/lang/Object;

    div-long v3, p1, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_4
    const-wide/32 v1, 0x278d00

    cmp-long v1, p1, v1

    if-gez v1, :cond_5

    .line 538
    const v1, 0x7f0f0188

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    div-long v3, p1, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    rem-long v3, p1, v8

    div-long/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 542
    :cond_5
    const v1, 0x7f0f018d

    new-array v2, v7, [Ljava/lang/Object;

    long-to-float v3, p1

    const v4, 0x4a1e3400

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const v3, 0x801a

    invoke-static {p0, v1, v2, v3}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 548
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v1

    .line 550
    new-instance v2, Lc/a/a/t;

    new-instance v3, Lc/a/a/b;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v1}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v4, Lc/a/a/b;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6, v1}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-direct {v2, v3, v4}, Lc/a/a/t;-><init>(Lc/a/a/y;Lc/a/a/y;)V

    .line 553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 555
    invoke-virtual {v2}, Lc/a/a/t;->c()I

    move-result v3

    invoke-virtual {v2}, Lc/a/a/t;->a()I

    move-result v4

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v3, v4

    .line 556
    if-lez v3, :cond_0

    .line 557
    const v4, 0x7f0e0006

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_0
    invoke-virtual {v2}, Lc/a/a/t;->e()I

    move-result v3

    invoke-virtual {v2}, Lc/a/a/t;->d()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr v3, v4

    .line 561
    if-lez v3, :cond_1

    .line 562
    const v4, 0x7f0e0001

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_1
    invoke-virtual {v2}, Lc/a/a/t;->f()I

    move-result v3

    .line 566
    invoke-virtual {v2}, Lc/a/a/t;->g()I

    move-result v2

    .line 568
    if-lez v3, :cond_4

    if-lez v2, :cond_4

    .line 569
    if-lez v3, :cond_2

    .line 570
    const v4, 0x7f0e0003

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_2
    if-lez v2, :cond_3

    .line 573
    const v3, 0x7f0e0005

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_3
    :goto_0
    const-string v0, ", "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 575
    :cond_4
    if-lez v3, :cond_5

    .line 576
    const v2, 0x7f0e0002

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 577
    :cond_5
    if-lez v2, :cond_3

    .line 578
    const v3, 0x7f0e0004

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    const-string v0, "T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 80
    if-gez v0, :cond_0

    .line 81
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 83
    :cond_0
    if-lez v0, :cond_1

    .line 84
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 85
    if-le v1, v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    :cond_1
    return-object p0
.end method

.method public static a(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v1, "%02d"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v1, "%02d"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    if-eqz p1, :cond_0

    .line 593
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v1, "%02d"

    new-array v2, v4, [Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v1, "%02d"

    new-array v2, v4, [Ljava/lang/Object;

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v1, "%02d"

    new-array v2, v4, [Ljava/lang/Object;

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v1, "%03d"

    new-array v2, v4, [Ljava/lang/Object;

    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 341
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lam/sunrise/android/calendar/b/d;->a(JLjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLjava/lang/String;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 388
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-static {p0, p1}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lam/sunrise/android/calendar/b/d;->b(JLjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(JLjava/util/TimeZone;)Ljava/util/Calendar;
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 321
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 337
    :goto_0
    return-object v0

    .line 325
    :cond_0
    if-nez p2, :cond_1

    .line 326
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    .line 329
    :cond_1
    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 330
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 332
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 333
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 334
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 335
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public static a(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/b/e;->a:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 112
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 119
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 301
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 435
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 436
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 437
    return-object v0
.end method

.method public static a(Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    :goto_0
    return-object p0

    .line 289
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 290
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 291
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 292
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 293
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 294
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 295
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    move-object p0, v0

    .line 297
    goto :goto_0
.end method

.method public static a(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 305
    if-nez p1, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 317
    :goto_0
    return-object v0

    .line 309
    :cond_0
    if-nez p0, :cond_1

    .line 310
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    .line 313
    :cond_1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 314
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 315
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 316
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method private static a(Landroid/text/format/Time;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 208
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 209
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 210
    iput v1, p0, Landroid/text/format/Time;->second:I

    .line 211
    return-void
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 188
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 192
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 189
    goto :goto_0

    :cond_1
    move v0, v1

    .line 192
    goto :goto_0
.end method

.method public static a(ZLjava/util/Calendar;Ljava/lang/String;Ljava/lang/String;I)[J
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x7

    .line 222
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 223
    invoke-static {v3}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 224
    invoke-static {v4}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 226
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 227
    invoke-virtual {v0, p4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 228
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 229
    const/4 v1, -0x4

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 231
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Calendar;

    .line 232
    invoke-virtual {v0, p4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 233
    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 234
    const/16 v1, 0xe

    invoke-virtual {v2, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 236
    new-instance v1, Landroid/text/format/Time;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 238
    if-eqz p0, :cond_0

    .line 239
    invoke-static {v1}, Lam/sunrise/android/calendar/b/d;->a(Landroid/text/format/Time;)V

    .line 242
    :cond_0
    new-instance v4, Landroid/text/format/Time;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 244
    invoke-static {v4}, Lam/sunrise/android/calendar/b/d;->a(Landroid/text/format/Time;)V

    .line 245
    new-instance v5, Landroid/text/format/Time;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 247
    invoke-static {v5}, Lam/sunrise/android/calendar/b/d;->a(Landroid/text/format/Time;)V

    .line 254
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const-string v0, ":"

    const-string v2, ";"

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 258
    :cond_1
    new-instance v0, Lcom/android/a/t;

    invoke-direct {v0}, Lcom/android/a/t;-><init>()V

    .line 260
    :try_start_0
    new-instance v2, Lcom/android/a/v;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, p2, v3, v6, p3}, Lcom/android/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/a/t;->a(Landroid/text/format/Time;Lcom/android/a/v;JJ)[J
    :try_end_0
    .catch Lcom/android/a/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/a/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Lcom/android/a/d;->printStackTrace()V

    :goto_1
    move-object v0, v7

    .line 270
    goto :goto_0

    .line 264
    :catch_1
    move-exception v0

    .line 265
    invoke-virtual {v0}, Lcom/android/a/a;->printStackTrace()V

    goto :goto_1

    .line 266
    :catch_2
    move-exception v0

    .line 267
    invoke-virtual {v0}, Landroid/util/TimeFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public static b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 157
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/b/e;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v1, "DateUtils"

    const-string v2, "formatDateWithTime(%s): EXCEPTION -- %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, v6}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ne v0, v1, :cond_0

    .line 106
    :goto_0
    return-object p0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(J)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 350
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lam/sunrise/android/calendar/b/d;->a(JLjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static b(JLjava/util/TimeZone;)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 374
    if-nez p2, :cond_0

    .line 375
    invoke-static {p0, p1}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0

    .line 378
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    .line 379
    const/4 v0, 0x0

    goto :goto_0

    .line 382
    :cond_1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 383
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static b(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/b/e;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 125
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 399
    if-nez p0, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 405
    :goto_0
    return-object v0

    .line 403
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 404
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 425
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 431
    :goto_0
    return-object v0

    .line 429
    :cond_0
    invoke-static {p0}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 430
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static b(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    .prologue
    .line 441
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(J)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 354
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 360
    :goto_0
    return-object v0

    .line 358
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 359
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 139
    :cond_0
    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    invoke-static {p0, p1}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {p0, p1}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 475
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 476
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 477
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 478
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 479
    return-object p0
.end method

.method public static c(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    .prologue
    .line 445
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(J)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 364
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 370
    :goto_0
    return-object v0

    .line 368
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 369
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static d(Ljava/util/Calendar;)Z
    .locals 1

    .prologue
    .line 497
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x1

    .line 452
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x1

    .line 457
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x1

    .line 465
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x1

    .line 470
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 5

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    const-wide/16 v0, 0x1

    .line 490
    :goto_0
    return-wide v0

    .line 488
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    .line 490
    new-instance v1, Lc/a/a/b;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v2, Lc/a/a/b;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v1, v2}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static i(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 5

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    const-wide/16 v0, 0x0

    .line 507
    :goto_0
    return-wide v0

    .line 505
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    .line 507
    new-instance v1, Lc/a/a/b;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v2, Lc/a/a/b;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v1, v2}, Lc/a/a/aa;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/aa;->c()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0
.end method
