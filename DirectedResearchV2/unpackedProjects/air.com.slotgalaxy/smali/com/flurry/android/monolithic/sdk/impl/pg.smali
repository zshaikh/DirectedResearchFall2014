.class public abstract Lcom/flurry/android/monolithic/sdk/impl/pg;
.super Lcom/flurry/android/monolithic/sdk/impl/or;
.source "SourceFile"


# instance fields
.field protected b:Lcom/flurry/android/monolithic/sdk/impl/pc;

.field protected c:I

.field protected d:Z

.field protected e:Lcom/flurry/android/monolithic/sdk/impl/pl;

.field protected f:Z


# direct methods
.method protected constructor <init>(ILcom/flurry/android/monolithic/sdk/impl/pc;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/or;-><init>()V

    .line 72
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->c:I

    .line 73
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/pl;->g()Lcom/flurry/android/monolithic/sdk/impl/pl;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    .line 74
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->b:Lcom/flurry/android/monolithic/sdk/impl/pc;

    .line 75
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/os;->e:Lcom/flurry/android/monolithic/sdk/impl/os;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->a(Lcom/flurry/android/monolithic/sdk/impl/os;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->d:Z

    .line 76
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/or;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afs;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/afs;-><init>()V

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->a(Lcom/flurry/android/monolithic/sdk/impl/pd;)Lcom/flurry/android/monolithic/sdk/impl/or;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ou;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->f()V

    .line 334
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->b:Lcom/flurry/android/monolithic/sdk/impl/pc;

    if-nez v0, :cond_1

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the generator, can not serialize JsonNode-based trees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->b:Lcom/flurry/android/monolithic/sdk/impl/pc;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/pc;->a(Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ou;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->f()V

    .line 319
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->b:Lcom/flurry/android/monolithic/sdk/impl/pc;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->b:Lcom/flurry/android/monolithic/sdk/impl/pc;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/pc;->a(Lcom/flurry/android/monolithic/sdk/impl/or;Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/os;)Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->c:I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/os;->c()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 154
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->h(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pl;->h()Lcom/flurry/android/monolithic/sdk/impl/pl;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    .line 156
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->a:Lcom/flurry/android/monolithic/sdk/impl/pd;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->a:Lcom/flurry/android/monolithic/sdk/impl/pd;

    invoke-interface {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/pd;->e(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->i()V

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->f()V

    .line 554
    :goto_0
    return-void

    .line 506
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 507
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_b

    .line 511
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    .line 512
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 513
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->b(I)V

    goto :goto_0

    .line 515
    :cond_2
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 516
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/pg;->a(J)V

    goto :goto_0

    .line 518
    :cond_3
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_4

    .line 519
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/pg;->a(D)V

    goto :goto_0

    .line 521
    :cond_4
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 522
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->a(F)V

    goto :goto_0

    .line 524
    :cond_5
    instance-of v2, v1, Ljava/lang/Short;

    if-eqz v2, :cond_6

    .line 525
    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->b(I)V

    goto :goto_0

    .line 527
    :cond_6
    instance-of v2, v1, Ljava/lang/Byte;

    if-eqz v2, :cond_7

    .line 528
    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->b(I)V

    goto :goto_0

    .line 530
    :cond_7
    instance-of v2, v1, Ljava/math/BigInteger;

    if-eqz v2, :cond_8

    .line 531
    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->a(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 533
    :cond_8
    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_9

    .line 534
    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->a(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 539
    :cond_9
    instance-of v2, v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v2, :cond_a

    .line 540
    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->b(I)V

    goto :goto_0

    .line 542
    :cond_a
    instance-of v2, v1, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v2, :cond_e

    .line 543
    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/pg;->a(J)V

    goto/16 :goto_0

    .line 546
    :cond_b
    instance-of v1, p1, [B

    if-eqz v1, :cond_c

    .line 547
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->a([B)V

    goto/16 :goto_0

    .line 549
    :cond_c
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 550
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->a(Z)V

    goto/16 :goto_0

    .line 552
    :cond_d
    instance-of v1, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_e

    .line 553
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->a(Z)V

    goto/16 :goto_0

    .line 556
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->i(Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->a:Lcom/flurry/android/monolithic/sdk/impl/pd;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->a:Lcom/flurry/android/monolithic/sdk/impl/pd;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pl;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pd;->b(Lcom/flurry/android/monolithic/sdk/impl/or;I)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pl;->j()Lcom/flurry/android/monolithic/sdk/impl/pl;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    .line 183
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->j()V

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->f:Z

    .line 349
    return-void
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 196
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->h(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pl;->i()Lcom/flurry/android/monolithic/sdk/impl/pl;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    .line 198
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->a:Lcom/flurry/android/monolithic/sdk/impl/pd;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->a:Lcom/flurry/android/monolithic/sdk/impl/pd;

    invoke-interface {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/pd;->b(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->k()V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 253
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->h(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/pg;->c(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->i(Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pl;->j()Lcom/flurry/android/monolithic/sdk/impl/pl;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    .line 220
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->a:Lcom/flurry/android/monolithic/sdk/impl/pd;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->a:Lcom/flurry/android/monolithic/sdk/impl/pd;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pl;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pd;->a(Lcom/flurry/android/monolithic/sdk/impl/or;I)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pg;->l()V

    goto :goto_0
.end method

.method public final h()Lcom/flurry/android/monolithic/sdk/impl/pl;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pg;->e:Lcom/flurry/android/monolithic/sdk/impl/pl;

    return-object v0
.end method

.method protected abstract h(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation
.end method

.method protected i()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    return-void
.end method

.method protected i(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/oq;

    invoke-direct {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/oq;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected j()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    return-void
.end method

.method protected k()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 211
    return-void
.end method

.method protected l()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method protected m()V
    .locals 2

    .prologue
    .line 485
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
