.class public Lcom/flurry/android/monolithic/sdk/impl/afz;
.super Lcom/flurry/android/monolithic/sdk/impl/or;
.source "SourceFile"


# static fields
.field protected static final b:I


# instance fields
.field protected c:Lcom/flurry/android/monolithic/sdk/impl/pc;

.field protected d:I

.field protected e:Z

.field protected f:Lcom/flurry/android/monolithic/sdk/impl/agc;

.field protected g:Lcom/flurry/android/monolithic/sdk/impl/agc;

.field protected h:I

.field protected i:Lcom/flurry/android/monolithic/sdk/impl/pl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ox;->a()I

    move-result v0

    sput v0, Lcom/flurry/android/monolithic/sdk/impl/afz;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/pc;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/or;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->c:Lcom/flurry/android/monolithic/sdk/impl/pc;

    .line 99
    sget v0, Lcom/flurry/android/monolithic/sdk/impl/afz;->b:I

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->d:I

    .line 100
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/pl;->g()Lcom/flurry/android/monolithic/sdk/impl/pl;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->i:Lcom/flurry/android/monolithic/sdk/impl/pl;

    .line 102
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/agc;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/agc;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->g:Lcom/flurry/android/monolithic/sdk/impl/agc;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->f:Lcom/flurry/android/monolithic/sdk/impl/agc;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->h:I

    .line 104
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/or;
    .locals 0

    .prologue
    .line 327
    return-object p0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ow;)Lcom/flurry/android/monolithic/sdk/impl/ow;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/agb;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->f:Lcom/flurry/android/monolithic/sdk/impl/agc;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->a()Lcom/flurry/android/monolithic/sdk/impl/pc;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/agb;-><init>(Lcom/flurry/android/monolithic/sdk/impl/agc;Lcom/flurry/android/monolithic/sdk/impl/pc;)V

    .line 146
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->h()Lcom/flurry/android/monolithic/sdk/impl/ot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/agb;->a(Lcom/flurry/android/monolithic/sdk/impl/ot;)V

    .line 147
    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/pc;)Lcom/flurry/android/monolithic/sdk/impl/ow;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/agb;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->f:Lcom/flurry/android/monolithic/sdk/impl/agc;

    invoke-direct {v0, v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/agb;-><init>(Lcom/flurry/android/monolithic/sdk/impl/agc;Lcom/flurry/android/monolithic/sdk/impl/pc;)V

    return-object v0
.end method

.method public a(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->i()V

    .line 492
    return-void
.end method

.method public a(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 527
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method public a(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 532
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method public a(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 522
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    .line 523
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/on;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 611
    new-array v0, p4, [B

    .line 612
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Ljava/lang/Object;)V

    .line 614
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 169
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->f:Lcom/flurry/android/monolithic/sdk/impl/agc;

    .line 170
    const/4 v1, -0x1

    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 173
    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    .line 175
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/agc;->a()Lcom/flurry/android/monolithic/sdk/impl/agc;

    move-result-object v0

    .line 176
    if-nez v0, :cond_1

    .line 262
    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    move v0, v4

    .line 178
    :cond_2
    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/agc;->a(I)Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v2

    .line 179
    if-eqz v2, :cond_0

    .line 182
    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/aga;->a:[I

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->d()V

    goto :goto_0

    .line 187
    :pswitch_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->e()V

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->b()V

    goto :goto_0

    .line 193
    :pswitch_3
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->c()V

    goto :goto_0

    .line 198
    :pswitch_4
    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/agc;->b(I)Ljava/lang/Object;

    move-result-object p0

    .line 199
    instance-of v2, p0, Lcom/flurry/android/monolithic/sdk/impl/pe;

    if-eqz v2, :cond_3

    .line 200
    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/pe;

    invoke-virtual {p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Lcom/flurry/android/monolithic/sdk/impl/pe;)V

    goto :goto_0

    .line 202
    :cond_3
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_5
    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/agc;->b(I)Ljava/lang/Object;

    move-result-object p0

    .line 209
    instance-of v2, p0, Lcom/flurry/android/monolithic/sdk/impl/pe;

    if-eqz v2, :cond_4

    .line 210
    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/pe;

    invoke-virtual {p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(Lcom/flurry/android/monolithic/sdk/impl/pe;)V

    goto :goto_0

    .line 212
    :cond_4
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :pswitch_6
    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/agc;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 219
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_5

    .line 220
    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 221
    :cond_5
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_6

    .line 222
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(J)V

    goto :goto_0

    .line 224
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(I)V

    goto/16 :goto_0

    .line 230
    :pswitch_7
    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/agc;->b(I)Ljava/lang/Object;

    move-result-object p0

    .line 231
    instance-of v2, p0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_7

    .line 232
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/math/BigDecimal;)V

    goto/16 :goto_0

    .line 233
    :cond_7
    instance-of v2, p0, Ljava/lang/Float;

    if-eqz v2, :cond_8

    .line 234
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(F)V

    goto/16 :goto_0

    .line 235
    :cond_8
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_9

    .line 236
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(D)V

    goto/16 :goto_0

    .line 237
    :cond_9
    if-nez p0, :cond_a

    .line 238
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->f()V

    goto/16 :goto_0

    .line 239
    :cond_a
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 240
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/or;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_b
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/oq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized value type for VALUE_NUMBER_FLOAT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", can not serialize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/oq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :pswitch_8
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Z)V

    goto/16 :goto_0

    .line 250
    :pswitch_9
    invoke-virtual {p1, v4}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Z)V

    goto/16 :goto_0

    .line 253
    :pswitch_a
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->f()V

    goto/16 :goto_0

    .line 256
    :pswitch_b
    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/agc;->b(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 182
    nop

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
    .end packed-switch
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ou;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 592
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->g:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    .line 593
    return-void
.end method

.method protected final a(Lcom/flurry/android/monolithic/sdk/impl/pb;)V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->g:Lcom/flurry/android/monolithic/sdk/impl/agc;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->h:I

    invoke-virtual {v0, v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/agc;->a(ILcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/agc;

    move-result-object v0

    .line 727
    if-nez v0, :cond_0

    .line 728
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->h:I

    .line 733
    :goto_0
    return-void

    .line 730
    :cond_0
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->g:Lcom/flurry/android/monolithic/sdk/impl/agc;

    .line 731
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->h:I

    goto :goto_0
.end method

.method protected final a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->g:Lcom/flurry/android/monolithic/sdk/impl/agc;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->h:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/agc;->a(ILcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/agc;

    move-result-object v0

    .line 737
    if-nez v0, :cond_0

    .line 738
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->h:I

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_0
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->g:Lcom/flurry/android/monolithic/sdk/impl/agc;

    .line 741
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->h:I

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/pe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 417
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->f:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->i:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-interface {p1}, Lcom/flurry/android/monolithic/sdk/impl/pe;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pl;->a(Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/pw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 425
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->f:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->i:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/pw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pl;->a(Ljava/lang/String;)I

    .line 427
    return-void
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
    .line 582
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->g:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 409
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->f:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->i:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/pl;->a(Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public a(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->f()V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->f()V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 563
    if-eqz p1, :cond_0

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->k:Lcom/flurry/android/monolithic/sdk/impl/pb;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;)V

    .line 564
    return-void

    .line 563
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->l:Lcom/flurry/android/monolithic/sdk/impl/pb;

    goto :goto_0
.end method

.method public a([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->b(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 369
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->d:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;)V

    .line 370
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->i:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pl;->h()Lcom/flurry/android/monolithic/sdk/impl/pl;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->i:Lcom/flurry/android/monolithic/sdk/impl/pl;

    .line 371
    return-void
.end method

.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 517
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    .line 518
    return-void
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 625
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/aga;->a:[I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 685
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->d()V

    .line 687
    :goto_0
    return-void

    .line 630
    :pswitch_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->e()V

    goto :goto_0

    .line 633
    :pswitch_2
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->b()V

    goto :goto_0

    .line 636
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->c()V

    goto :goto_0

    .line 639
    :pswitch_4
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :pswitch_5
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->l()[C

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->n()I

    move-result v1

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->m()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a([CII)V

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :pswitch_6
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/aga;->b:[I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->q()Lcom/flurry/android/monolithic/sdk/impl/oy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/oy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 657
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->u()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(J)V

    goto :goto_0

    .line 651
    :pswitch_7
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->b(I)V

    goto :goto_0

    .line 654
    :pswitch_8
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 661
    :pswitch_9
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/aga;->b:[I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->q()Lcom/flurry/android/monolithic/sdk/impl/oy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/oy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 669
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->x()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(D)V

    goto :goto_0

    .line 663
    :pswitch_a
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->y()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 666
    :pswitch_b
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->w()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(F)V

    goto :goto_0

    .line 673
    :pswitch_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Z)V

    goto/16 :goto_0

    .line 676
    :pswitch_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Z)V

    goto/16 :goto_0

    .line 679
    :pswitch_e
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->f()V

    goto/16 :goto_0

    .line 682
    :pswitch_f
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->z()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 649
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 661
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/pe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->f()V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->f()V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->i()V

    .line 487
    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 377
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;)V

    .line 379
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->i:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pl;->j()Lcom/flurry/android/monolithic/sdk/impl/pl;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 381
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->i:Lcom/flurry/android/monolithic/sdk/impl/pl;

    .line 383
    :cond_0
    return-void
.end method

.method public c(Lcom/flurry/android/monolithic/sdk/impl/ow;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 691
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 694
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->f:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    .line 695
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 700
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/aga;->a:[I

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 716
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;)V

    .line 718
    :goto_0
    return-void

    .line 702
    :pswitch_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->b()V

    .line 703
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_1

    .line 704
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->c(Lcom/flurry/android/monolithic/sdk/impl/ow;)V

    goto :goto_1

    .line 706
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->c()V

    goto :goto_0

    .line 709
    :pswitch_2
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->d()V

    .line 710
    :goto_2
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->c:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_2

    .line 711
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->c(Lcom/flurry/android/monolithic/sdk/impl/ow;)V

    goto :goto_2

    .line 713
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->e()V

    goto :goto_0

    .line 700
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->i()V

    .line 477
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->e:Z

    .line 354
    return-void
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;)V

    .line 390
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->i:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pl;->i()Lcom/flurry/android/monolithic/sdk/impl/pl;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->i:Lcom/flurry/android/monolithic/sdk/impl/pl;

    .line 391
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->i()V

    .line 497
    return-void
.end method

.method public final e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 397
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->c:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;)V

    .line 399
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->i:Lcom/flurry/android/monolithic/sdk/impl/pl;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pl;->j()Lcom/flurry/android/monolithic/sdk/impl/pl;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    .line 401
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->i:Lcom/flurry/android/monolithic/sdk/impl/pl;

    .line 403
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 558
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    .line 559
    return-void
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 568
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pb;)V

    .line 569
    return-void
.end method

.method public g()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    return-void
.end method

.method public h()Lcom/flurry/android/monolithic/sdk/impl/ow;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afz;->c:Lcom/flurry/android/monolithic/sdk/impl/pc;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->a(Lcom/flurry/android/monolithic/sdk/impl/pc;)Lcom/flurry/android/monolithic/sdk/impl/ow;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 746
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Called operation not supported for TokenBuffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 268
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    const-string v1, "[TokenBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afz;->h()Lcom/flurry/android/monolithic/sdk/impl/ow;

    move-result-object v1

    .line 273
    const/4 v2, 0x0

    .line 278
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 282
    if-nez v3, :cond_1

    .line 292
    if-lt v2, v5, :cond_0

    .line 293
    const-string v1, " ... (truncated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 283
    :cond_1
    if-ge v2, v5, :cond_3

    .line 284
    if-lez v2, :cond_2

    .line 285
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_2
    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/pb;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 290
    goto :goto_0
.end method
