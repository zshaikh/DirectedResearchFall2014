.class public Lorg/codehaus/jackson/util/TokenBuffer;
.super Lorg/codehaus/jackson/JsonGenerator;
.source "TokenBuffer.java"


# static fields
.field protected static final a:I


# instance fields
.field protected b:Lorg/codehaus/jackson/ObjectCodec;

.field protected c:I

.field protected d:Z

.field protected e:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field protected f:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field protected g:I

.field protected h:Lorg/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lorg/codehaus/jackson/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/util/TokenBuffer;->a:I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/ObjectCodec;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonGenerator;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->b:Lorg/codehaus/jackson/ObjectCodec;

    .line 99
    sget v0, Lorg/codehaus/jackson/util/TokenBuffer;->a:I

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->c:I

    .line 100
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->h:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 102
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->e:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->g:I

    .line 104
    return-void
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/JsonParser;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->b:Lorg/codehaus/jackson/ObjectCodec;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonParser;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->e:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;-><init>(Lorg/codehaus/jackson/util/TokenBuffer$Segment;Lorg/codehaus/jackson/ObjectCodec;)V

    .line 146
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->q()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->a(Lorg/codehaus/jackson/JsonLocation;)V

    .line 147
    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonParser;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->e:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0, v1, p1}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;-><init>(Lorg/codehaus/jackson/util/TokenBuffer$Segment;Lorg/codehaus/jackson/ObjectCodec;)V

    return-object v0
.end method

.method public a(C)V
    .locals 0

    .prologue
    .line 491
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->g()V

    .line 492
    return-void
.end method

.method public a(D)V
    .locals 2

    .prologue
    .line 527
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 532
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 517
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 518
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 522
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 523
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 582
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->h:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public a(Ljava/math/BigDecimal;)V
    .locals 1

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->f()V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->f()V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final a(Lorg/codehaus/jackson/JsonToken;)V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->g:I

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->a(ILorg/codehaus/jackson/JsonToken;)Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v0

    .line 727
    if-nez v0, :cond_0

    .line 728
    iget v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->g:I

    .line 733
    :goto_0
    return-void

    .line 730
    :cond_0
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 731
    const/4 v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->g:I

    goto :goto_0
.end method

.method protected final a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->g:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->a(ILorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v0

    .line 737
    if-nez v0, :cond_0

    .line 738
    iget v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->g:I

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_0
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 741
    const/4 v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->g:I

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 563
    if-eqz p1, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 564
    return-void

    .line 563
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0
.end method

.method public a([CII)V
    .locals 1

    .prologue
    .line 446
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->b(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 370
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->h:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->b()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->h:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 371
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->f()V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lorg/codehaus/jackson/JsonParser;)V
    .locals 3

    .prologue
    .line 625
    sget-object v0, Lorg/codehaus/jackson/util/TokenBuffer$1;->a:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

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
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->d()V

    .line 687
    :goto_0
    return-void

    .line 630
    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->e()V

    goto :goto_0

    .line 633
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->b()V

    goto :goto_0

    .line 636
    :pswitch_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->c()V

    goto :goto_0

    .line 639
    :pswitch_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :pswitch_5
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->t()[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->v()I

    move-result v1

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->u()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/util/TokenBuffer;->a([CII)V

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :pswitch_6
    sget-object v0, Lorg/codehaus/jackson/util/TokenBuffer$1;->b:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->y()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 657
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->C()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(J)V

    goto :goto_0

    .line 651
    :pswitch_7
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->B()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(I)V

    goto :goto_0

    .line 654
    :pswitch_8
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->D()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 661
    :pswitch_9
    sget-object v0, Lorg/codehaus/jackson/util/TokenBuffer$1;->b:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->y()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 669
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->F()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(D)V

    goto :goto_0

    .line 663
    :pswitch_a
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->G()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 666
    :pswitch_b
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->E()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(F)V

    goto :goto_0

    .line 673
    :pswitch_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Z)V

    goto/16 :goto_0

    .line 676
    :pswitch_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Z)V

    goto/16 :goto_0

    .line 679
    :pswitch_e
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->f()V

    goto/16 :goto_0

    .line 682
    :pswitch_f
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->H()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Ljava/lang/Object;)V

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

.method public b([CII)V
    .locals 0

    .prologue
    .line 486
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->g()V

    .line 487
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 379
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->h:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->d()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 381
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->h:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 383
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 476
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->g()V

    .line 477
    return-void
.end method

.method public c(Lorg/codehaus/jackson/JsonParser;)V
    .locals 2

    .prologue
    .line 691
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 694
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 695
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 700
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/util/TokenBuffer$1;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 716
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->b(Lorg/codehaus/jackson/JsonParser;)V

    .line 718
    :goto_0
    return-void

    .line 702
    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->b()V

    .line 703
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 704
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->c(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_1

    .line 706
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->c()V

    goto :goto_0

    .line 709
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->d()V

    .line 710
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_2

    .line 711
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->c(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_2

    .line 713
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->e()V

    goto :goto_0

    .line 700
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public close()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->d:Z

    .line 354
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 390
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->h:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->c()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->h:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 391
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 399
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->h:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->d()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    .line 401
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->h:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 403
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 568
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 569
    return-void
.end method

.method protected g()V
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
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->a()Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 273
    const/4 v2, 0x0

    .line 278
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;
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
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 290
    goto :goto_0
.end method
