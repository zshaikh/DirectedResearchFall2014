.class Lc/a/a/e;
.super Lc/a/a/d;
.source "DateTimeFieldType.java"


# instance fields
.field private final a:B

.field private final transient b:Lc/a/a/m;

.field private final transient c:Lc/a/a/m;


# direct methods
.method constructor <init>(Ljava/lang/String;BLc/a/a/m;Lc/a/a/m;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lc/a/a/d;-><init>(Ljava/lang/String;)V

    .line 445
    iput-byte p2, p0, Lc/a/a/e;->a:B

    .line 446
    iput-object p3, p0, Lc/a/a/e;->b:Lc/a/a/m;

    .line 447
    iput-object p4, p0, Lc/a/a/e;->c:Lc/a/a/m;

    .line 448
    return-void
.end method


# virtual methods
.method public a(Lc/a/a/a;)Lc/a/a/c;
    .locals 2

    .prologue
    .line 480
    invoke-static {p1}, Lc/a/a/f;->a(Lc/a/a/a;)Lc/a/a/a;

    move-result-object v0

    .line 482
    iget-byte v1, p0, Lc/a/a/e;->a:B

    packed-switch v1, :pswitch_data_0

    .line 531
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 484
    :pswitch_0
    invoke-virtual {v0}, Lc/a/a/a;->K()Lc/a/a/c;

    move-result-object v0

    .line 528
    :goto_0
    return-object v0

    .line 486
    :pswitch_1
    invoke-virtual {v0}, Lc/a/a/a;->F()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 488
    :pswitch_2
    invoke-virtual {v0}, Lc/a/a/a;->I()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 490
    :pswitch_3
    invoke-virtual {v0}, Lc/a/a/a;->G()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 492
    :pswitch_4
    invoke-virtual {v0}, Lc/a/a/a;->E()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 494
    :pswitch_5
    invoke-virtual {v0}, Lc/a/a/a;->v()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 496
    :pswitch_6
    invoke-virtual {v0}, Lc/a/a/a;->C()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 498
    :pswitch_7
    invoke-virtual {v0}, Lc/a/a/a;->u()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 500
    :pswitch_8
    invoke-virtual {v0}, Lc/a/a/a;->A()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 502
    :pswitch_9
    invoke-virtual {v0}, Lc/a/a/a;->z()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 504
    :pswitch_a
    invoke-virtual {v0}, Lc/a/a/a;->x()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 506
    :pswitch_b
    invoke-virtual {v0}, Lc/a/a/a;->t()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 508
    :pswitch_c
    invoke-virtual {v0}, Lc/a/a/a;->r()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 510
    :pswitch_d
    invoke-virtual {v0}, Lc/a/a/a;->p()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 512
    :pswitch_e
    invoke-virtual {v0}, Lc/a/a/a;->q()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 514
    :pswitch_f
    invoke-virtual {v0}, Lc/a/a/a;->n()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 516
    :pswitch_10
    invoke-virtual {v0}, Lc/a/a/a;->m()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 518
    :pswitch_11
    invoke-virtual {v0}, Lc/a/a/a;->k()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 520
    :pswitch_12
    invoke-virtual {v0}, Lc/a/a/a;->j()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 522
    :pswitch_13
    invoke-virtual {v0}, Lc/a/a/a;->h()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 524
    :pswitch_14
    invoke-virtual {v0}, Lc/a/a/a;->g()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 526
    :pswitch_15
    invoke-virtual {v0}, Lc/a/a/a;->e()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 528
    :pswitch_16
    invoke-virtual {v0}, Lc/a/a/a;->d()Lc/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 463
    if-ne p0, p1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    instance-of v2, p1, Lc/a/a/e;

    if-eqz v2, :cond_2

    .line 467
    iget-byte v2, p0, Lc/a/a/e;->a:B

    check-cast p1, Lc/a/a/e;

    iget-byte v3, p1, Lc/a/a/e;->a:B

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 469
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 475
    const/4 v0, 0x1

    iget-byte v1, p0, Lc/a/a/e;->a:B

    shl-int/2addr v0, v1

    return v0
.end method

.method public y()Lc/a/a/m;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lc/a/a/e;->b:Lc/a/a/m;

    return-object v0
.end method