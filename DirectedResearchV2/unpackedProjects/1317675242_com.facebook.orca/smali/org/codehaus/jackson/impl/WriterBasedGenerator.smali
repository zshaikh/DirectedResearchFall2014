.class public final Lorg/codehaus/jackson/impl/WriterBasedGenerator;
.super Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.source "WriterBasedGenerator.java"


# static fields
.field protected static final d:[C

.field protected static final e:[I


# instance fields
.field protected final f:Lorg/codehaus/jackson/io/IOContext;

.field protected final g:Ljava/io/Writer;

.field protected h:[C

.field protected j:I

.field protected k:I

.field protected l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->g()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->d:[C

    .line 26
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->f()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->e:[I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 599
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    sub-int/2addr v0, v1

    .line 601
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    invoke-virtual {p1, v5, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 602
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    .line 603
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g()V

    .line 605
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    move v6, v1

    move v1, v0

    move v0, v6

    .line 607
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    if-le v0, v2, :cond_0

    .line 608
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    .line 609
    add-int v3, v1, v2

    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:[C

    invoke-virtual {p1, v1, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 610
    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:I

    .line 611
    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    .line 612
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g()V

    .line 613
    add-int/2addr v1, v2

    .line 614
    sub-int/2addr v0, v2

    .line 615
    goto :goto_0

    .line 617
    :cond_0
    add-int v2, v1, v0

    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:[C

    invoke-virtual {p1, v1, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 618
    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:I

    .line 619
    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    .line 620
    return-void
.end method


# virtual methods
.method public a(C)V
    .locals 3

    .prologue
    .line 590
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    if-lt v0, v1, :cond_0

    .line 591
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g()V

    .line 593
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    aput-char p1, v0, v1

    .line 594
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Ljava/lang/String;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->l()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->b(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 267
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->d()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 268
    return-void

    .line 262
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    if-lt v0, v1, :cond_2

    .line 263
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g()V

    .line 265
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public b([CII)V
    .locals 2

    .prologue
    .line 572
    const/16 v0, 0x20

    if-ge p3, v0, :cond_1

    .line 573
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    sub-int/2addr v0, v1

    .line 574
    if-le p3, v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g()V

    .line 577
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g()V

    .line 583
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 532
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    sub-int/2addr v1, v2

    .line 534
    if-nez v1, :cond_0

    .line 535
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g()V

    .line 536
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    sub-int/2addr v1, v2

    .line 539
    :cond_0
    if-lt v1, v0, :cond_1

    .line 540
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 541
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 915
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 921
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:[C

    if-eqz v0, :cond_1

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b()V

    goto :goto_0

    .line 927
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->d()V

    goto :goto_0

    .line 934
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g()V

    .line 942
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:Ljava/io/Writer;

    if-eqz v0, :cond_3

    .line 943
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->c()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 944
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 951
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f()V

    .line 952
    return-void

    .line 945
    :cond_4
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 947
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->d()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 292
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->l()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    if-lt v0, v1, :cond_2

    .line 296
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g()V

    .line 298
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:[C

    .line 958
    if-eqz v0, :cond_0

    .line 959
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:[C

    .line 960
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->b([C)V

    .line 962
    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 4

    .prologue
    .line 1808
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:I

    sub-int/2addr v0, v1

    .line 1809
    if-lez v0, :cond_0

    .line 1810
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:I

    .line 1811
    const/4 v2, 0x0

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:I

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:I

    .line 1812
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:Ljava/io/Writer;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1814
    :cond_0
    return-void
.end method
