.class public abstract Lcom/flurry/android/monolithic/sdk/impl/vo;
.super Lcom/flurry/android/monolithic/sdk/impl/qu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/android/monolithic/sdk/impl/qu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final q:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/afm;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/qu;-><init>()V

    .line 40
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    .line 41
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/qu;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    .line 37
    return-void
.end method

.method protected static final b(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 592
    const-string v0, "2.2250738585072012e-308"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const-wide/high16 v0, 0x10000000000000L

    .line 595
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method protected final A(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 514
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 516
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->x()D

    move-result-wide v0

    .line 548
    :goto_0
    return-wide v0

    .line 520
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_6

    .line 521
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move-wide v0, v2

    .line 523
    goto :goto_0

    .line 525
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 543
    :cond_3
    :try_start_0
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->b(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 527
    :sswitch_0
    const-string v1, "Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 528
    :cond_4
    const-wide/high16 v0, 0x7ff0000000000000L

    goto :goto_0

    .line 532
    :sswitch_1
    const-string v1, "NaN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 533
    const-wide/high16 v0, 0x7ff8000000000000L

    goto :goto_0

    .line 537
    :sswitch_2
    const-string v1, "-Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "-INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 538
    :cond_5
    const-wide/high16 v0, -0x10000000000000L

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v1, "not a valid double value"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 547
    :cond_6
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_7

    move-wide v0, v2

    .line 548
    goto :goto_0

    .line 551
    :cond_7
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_2
        0x49 -> :sswitch_0
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected B(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 558
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    .line 559
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_0

    .line 560
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->u()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 574
    :goto_0
    return-object v1

    .line 562
    :cond_0
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_1

    .line 563
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    move-object v1, p0

    goto :goto_0

    .line 565
    :cond_1
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_3

    .line 570
    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 572
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->c()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 575
    :catch_0
    move-exception v1

    .line 576
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not a valid representation (error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1

    .line 579
    :cond_3
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/qq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/qu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qk;",
            "Lcom/flurry/android/monolithic/sdk/impl/qq;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p2, p1, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/qq;->a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/qu;

    move-result-object v0

    .line 620
    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/rw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p3, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rw;->d(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 650
    if-nez p3, :cond_1

    .line 651
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->f()Ljava/lang/Class;

    move-result-object v0

    .line 654
    :goto_0
    invoke-virtual {p2, p1, p0, v0, p4}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qu;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    :goto_1
    return-void

    .line 658
    :cond_0
    invoke-virtual {p0, p2, v0, p4}, Lcom/flurry/android/monolithic/sdk/impl/vo;->a(Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->d()Lcom/flurry/android/monolithic/sdk/impl/ow;

    goto :goto_1

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 671
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->k:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 675
    :cond_0
    return-void
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/qu;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/rz;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    return-object v0
.end method

.method protected final n(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->k:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 124
    :goto_0
    return v0

    .line 103
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->l:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 107
    goto :goto_0

    .line 110
    :cond_2
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_5

    .line 112
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->q()Lcom/flurry/android/monolithic/sdk/impl/oy;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oy;->a:Lcom/flurry/android/monolithic/sdk/impl/oy;

    if-ne v0, v1, :cond_4

    .line 113
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->t()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vo;->p(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Z

    move-result v0

    goto :goto_0

    .line 118
    :cond_5
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_9

    .line 119
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v3

    .line 121
    goto :goto_0

    .line 123
    :cond_6
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 124
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 126
    :cond_8
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v1, "only \"true\" or \"false\" recognized"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 129
    :cond_9
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method

.method protected final o(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->k:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    .line 137
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 163
    :goto_0
    return-object v0

    .line 139
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->l:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    .line 140
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 143
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_4

    .line 145
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->q()Lcom/flurry/android/monolithic/sdk/impl/oy;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oy;->a:Lcom/flurry/android/monolithic/sdk/impl/oy;

    if-ne v0, v1, :cond_3

    .line 146
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->t()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vo;->p(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_4
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_5

    .line 151
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    move-object v0, p0

    goto :goto_0

    .line 154
    :cond_5
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_9

    .line 155
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 157
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 159
    :cond_6
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 160
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 162
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 163
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    move-object v0, p0

    goto :goto_0

    .line 165
    :cond_8
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v1, "only \"true\" or \"false\" recognized"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 168
    :cond_9
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method

.method protected final p(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->q()Lcom/flurry/android/monolithic/sdk/impl/oy;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oy;->b:Lcom/flurry/android/monolithic/sdk/impl/oy;

    if-ne v0, v1, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->u()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 182
    :goto_1
    return v0

    .line 175
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 182
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method

.method protected q(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Byte;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    .line 189
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_1

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->r()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 211
    :goto_0
    return-object v1

    .line 192
    :cond_1
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_5

    .line 193
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 196
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 197
    if-nez v2, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->c()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Byte;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 200
    :cond_2
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/pt;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 205
    const/16 v2, -0x80

    if-lt v1, v2, :cond_3

    const/16 v2, 0x7f

    if-le v1, v2, :cond_4

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v2, "overflow, value can not be represented as 8-bit value"

    invoke-virtual {p2, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1

    .line 201
    :catch_0
    move-exception v1

    .line 202
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v2, "not a valid Byte value"

    invoke-virtual {p2, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1

    .line 208
    :cond_4
    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 210
    :cond_5
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_6

    .line 211
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    move-object v1, p0

    goto :goto_0

    .line 213
    :cond_6
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1
.end method

.method protected r(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Short;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    .line 220
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_1

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->s()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 242
    :goto_0
    return-object v1

    .line 223
    :cond_1
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_5

    .line 224
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 227
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 228
    if-nez v2, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->c()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Short;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 231
    :cond_2
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/pt;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    const/16 v2, -0x8000

    if-lt v1, v2, :cond_3

    const/16 v2, 0x7fff

    if-le v1, v2, :cond_4

    .line 237
    :cond_3
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v2, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1

    .line 232
    :catch_0
    move-exception v1

    .line 233
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v2, "not a valid Short value"

    invoke-virtual {p2, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1

    .line 239
    :cond_4
    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 241
    :cond_5
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_6

    .line 242
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    move-object v1, p0

    goto :goto_0

    .line 244
    :cond_6
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1
.end method

.method protected final s(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vo;->t(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)I

    move-result v0

    .line 252
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v1, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 255
    :cond_1
    int-to-short v0, v0

    return v0
.end method

.method protected final t(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 264
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->t()I

    move-result v0

    .line 291
    :goto_0
    return v0

    .line 267
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_6

    .line 271
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 273
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 274
    const/16 v2, 0x9

    if-le v1, v2, :cond_4

    .line 275
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 276
    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overflow: numeric value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") out of range of int ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v1, "not a valid int value"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 280
    :cond_3
    long-to-int v0, v1

    goto :goto_0

    .line 282
    :cond_4
    if-nez v1, :cond_5

    move v0, v3

    .line 283
    goto :goto_0

    .line 285
    :cond_5
    :try_start_1
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/pt;->a(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 290
    :cond_6
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_7

    move v0, v3

    .line 291
    goto :goto_0

    .line 294
    :cond_7
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method

.method protected final u(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    .line 301
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_1

    .line 302
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->t()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 325
    :goto_0
    return-object v1

    .line 304
    :cond_1
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_6

    .line 305
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 307
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 308
    const/16 v3, 0x9

    if-le v2, v3, :cond_4

    .line 309
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 310
    const-wide/32 v4, -0x80000000

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 311
    :cond_2
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overflow: numeric value ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") out of range of Integer ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v2, "not a valid Integer value"

    invoke-virtual {p2, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1

    .line 314
    :cond_3
    long-to-int v1, v2

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 316
    :cond_4
    if-nez v2, :cond_5

    .line 317
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->c()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 319
    :cond_5
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/pt;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 324
    :cond_6
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_7

    .line 325
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    move-object v1, p0

    goto/16 :goto_0

    .line 328
    :cond_7
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v1

    throw v1
.end method

.method protected final v(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 337
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    .line 338
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    .line 341
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_3

    .line 343
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 345
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    move-object v0, p0

    goto :goto_0

    .line 348
    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/pt;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v1, "not a valid Long value"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 352
    :cond_3
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_4

    .line 353
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    move-object v0, p0

    goto :goto_0

    .line 356
    :cond_4
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method

.method protected final w(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 362
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 363
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->u()J

    move-result-wide v0

    .line 377
    :goto_0
    return-wide v0

    .line 366
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_3

    .line 367
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move-wide v0, v2

    .line 369
    goto :goto_0

    .line 372
    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/pt;->b(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v1, "not a valid long value"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 376
    :cond_3
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_4

    move-wide v0, v2

    .line 377
    goto :goto_0

    .line 379
    :cond_4
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method

.method protected final x(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 388
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    .line 389
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->w()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    .line 392
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_6

    .line 393
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    move-object v0, p0

    goto :goto_0

    .line 397
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 415
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 399
    :sswitch_0
    const-string v1, "Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    :cond_4
    const/high16 v0, 0x7f800000

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 404
    :sswitch_1
    const-string v1, "NaN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 405
    const/high16 v0, 0x7fc00000

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 409
    :sswitch_2
    const-string v1, "-Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "-INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 410
    :cond_5
    const/high16 v0, -0x800000

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v1, "not a valid Float value"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 419
    :cond_6
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_7

    .line 420
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    move-object v0, p0

    goto :goto_0

    .line 423
    :cond_7
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_2
        0x49 -> :sswitch_0
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected final y(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 429
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 431
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    .line 432
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->w()F

    move-result v0

    .line 462
    :goto_0
    return v0

    .line 434
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_6

    .line 435
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 437
    goto :goto_0

    .line 439
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 457
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 441
    :sswitch_0
    const-string v1, "Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 442
    :cond_4
    const/high16 v0, 0x7f800000

    goto :goto_0

    .line 446
    :sswitch_1
    const-string v1, "NaN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 447
    const/high16 v0, 0x7fc00000

    goto :goto_0

    .line 451
    :sswitch_2
    const-string v1, "-Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "-INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    :cond_5
    const/high16 v0, -0x800000

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v1, "not a valid float value"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 461
    :cond_6
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_7

    move v0, v2

    .line 462
    goto :goto_0

    .line 465
    :cond_7
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 439
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_2
        0x49 -> :sswitch_0
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected final z(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 473
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    .line 474
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->x()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 504
    :goto_0
    return-object v0

    .line 476
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_6

    .line 477
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 479
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    move-object v0, p0

    goto :goto_0

    .line 481
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 499
    :cond_3
    :try_start_0
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->b(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 483
    :sswitch_0
    const-string v1, "Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    :cond_4
    const-wide/high16 v0, 0x7ff0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 488
    :sswitch_1
    const-string v1, "NaN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 489
    const-wide/high16 v0, 0x7ff8000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 493
    :sswitch_2
    const-string v1, "-Infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "-INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    :cond_5
    const-wide/high16 v0, -0x10000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    const-string v1, "not a valid Double value"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 503
    :cond_6
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_7

    .line 504
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vo;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    move-object v0, p0

    goto :goto_0

    .line 507
    :cond_7
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vo;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 481
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_2
        0x49 -> :sswitch_0
        0x4e -> :sswitch_1
    .end sparse-switch
.end method
