.class final Lcom/flurry/android/monolithic/sdk/impl/vi;
.super Lcom/flurry/android/monolithic/sdk/impl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/ve",
        "<[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 543
    const-class v0, [D

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ve;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->q:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 574
    const/4 v0, 0x0

    .line 580
    :goto_0
    return-object v0

    .line 577
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->o:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vi;->q:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 580
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vi;->A(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vi;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[D

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 549
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vi;->c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[D

    move-result-object v0

    .line 564
    :goto_0
    return-object v0

    .line 552
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->h()Lcom/flurry/android/monolithic/sdk/impl/adp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/adp;->g()Lcom/flurry/android/monolithic/sdk/impl/adt;

    move-result-object v1

    .line 553
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/adt;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move-object v2, v0

    move v0, v6

    .line 556
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v3

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v3, v4, :cond_2

    .line 557
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vi;->A(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)D

    move-result-wide v3

    .line 558
    array-length v5, v2

    if-lt v0, v5, :cond_1

    .line 559
    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/adt;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move-object v2, v0

    move v0, v6

    .line 562
    :cond_1
    add-int/lit8 v5, v0, 0x1

    aput-wide v3, v2, v0

    move v0, v5

    .line 563
    goto :goto_1

    .line 564
    :cond_2
    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/adt;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    move-object v0, p0

    goto :goto_0
.end method
