.class public Lorg/codehaus/jackson/impl/Utf8Generator;
.super Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.source "Utf8Generator.java"


# static fields
.field static final d:[B

.field protected static final e:[I

.field private static final n:[B

.field private static final o:[B

.field private static final p:[B


# instance fields
.field protected final f:Lorg/codehaus/jackson/io/IOContext;

.field protected final g:Ljava/io/OutputStream;

.field protected h:[B

.field protected j:I

.field protected final k:I

.field protected l:[C

.field protected m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 40
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->h()[B

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->d:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:[B

    .line 43
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->o:[B

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->p:[B

    .line 50
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->f()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->e:[I

    return-void

    .line 42
    :array_0
    .array-data 1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    .line 43
    :array_1
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    .line 44
    :array_2
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method private final a(I[CII)I
    .locals 3

    .prologue
    .line 1637
    const v0, 0xd800

    if-lt p1, v0, :cond_1

    .line 1638
    const v0, 0xdfff

    if-gt p1, v0, :cond_1

    .line 1640
    if-lt p3, p4, :cond_0

    .line 1641
    const-string v0, "Split surrogate on writeRaw() input (last character)"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Ljava/lang/String;)V

    .line 1643
    :cond_0
    aget-char v0, p2, p3

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(II)V

    .line 1644
    add-int/lit8 v0, p3, 0x1

    .line 1651
    :goto_0
    return v0

    .line 1647
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    .line 1648
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1649
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1650
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v0, p3

    .line 1651
    goto :goto_0
.end method

.method private final a([CII)V
    .locals 6

    .prologue
    .line 781
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    .line 782
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    move v2, p2

    .line 785
    :goto_0
    if-ge v2, p3, :cond_4

    .line 788
    :cond_0
    aget-char v3, p1, v2

    .line 789
    const/16 v4, 0x80

    if-lt v3, v4, :cond_2

    .line 801
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v3, v3, 0x3

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    if-lt v3, v4, :cond_1

    .line 802
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->g()V

    .line 804
    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-char v2, p1, v2

    .line 805
    const/16 v4, 0x800

    if-ge v2, v4, :cond_5

    .line 806
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    shr-int/lit8 v5, v2, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 807
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    :goto_1
    move v2, v3

    .line 811
    goto :goto_0

    .line 793
    :cond_2
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    if-lt v4, v0, :cond_3

    .line 794
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->g()V

    .line 796
    :cond_3
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 797
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_0

    .line 812
    :cond_4
    return-void

    .line 809
    :cond_5
    invoke-direct {p0, v2, p1, v3, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(I[CII)I

    goto :goto_1
.end method


# virtual methods
.method public a(C)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 760
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    if-lt v0, v1, :cond_0

    .line 761
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->g()V

    .line 763
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    .line 764
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    .line 765
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 772
    :goto_0
    return-void

    .line 766
    :cond_1
    const/16 v1, 0x800

    if-ge p1, v1, :cond_2

    .line 767
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    shr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 768
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 770
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2, v2}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(I[CII)I

    goto :goto_0
.end method

.method protected final a(II)V
    .locals 4

    .prologue
    .line 1657
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/impl/Utf8Generator;->b(II)I

    move-result v0

    .line 1658
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    if-le v1, v2, :cond_0

    .line 1659
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->g()V

    .line 1661
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    .line 1662
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    shr-int/lit8 v3, v0, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1663
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1664
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1665
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 1666
    return-void
.end method

.method protected final b(II)I
    .locals 3

    .prologue
    const v2, 0xdc00

    .line 1700
    if-lt p2, v2, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_1

    .line 1701
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incomplete surrogate pair: first char 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", second 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1702
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Ljava/lang/String;)V

    .line 1704
    :cond_1
    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    .line 1705
    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Ljava/lang/String;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->i:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->i:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->l()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->b(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 364
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->d()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 365
    return-void

    .line 359
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    if-lt v0, v1, :cond_2

    .line 360
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->g()V

    .line 362
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final b([CII)V
    .locals 6

    .prologue
    .line 719
    add-int v0, p3, p3

    add-int/2addr v0, p3

    .line 720
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    if-le v1, v2, :cond_2

    .line 722
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    if-ge v1, v0, :cond_1

    .line 723
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->a([CII)V

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->g()V

    .line 730
    :cond_2
    add-int v0, p3, p2

    move v1, p2

    .line 734
    :goto_1
    if-ge v1, v0, :cond_0

    .line 737
    :cond_3
    aget-char v2, p1, v1

    .line 738
    const/16 v3, 0x7f

    if-le v2, v3, :cond_4

    .line 746
    add-int/lit8 v2, v1, 0x1

    aget-char v1, p1, v1

    .line 747
    const/16 v3, 0x800

    if-ge v1, v3, :cond_5

    .line 748
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    shr-int/lit8 v5, v1, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 749
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    :goto_2
    move v1, v2

    .line 753
    goto :goto_1

    .line 741
    :cond_4
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 742
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_3

    goto :goto_0

    .line 751
    :cond_5
    invoke-direct {p0, v1, p1, v2, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(I[CII)I

    goto :goto_2
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 684
    .line 685
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v5

    .line 686
    :goto_0
    if-lez v0, :cond_1

    .line 687
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->l:[C

    .line 688
    array-length v3, v2

    .line 689
    if-ge v0, v3, :cond_0

    move v3, v0

    .line 690
    :cond_0
    add-int v4, v1, v3

    invoke-virtual {p1, v1, v4, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 691
    invoke-virtual {p0, v2, v5, v3}, Lorg/codehaus/jackson/impl/Utf8Generator;->b([CII)V

    .line 692
    add-int/2addr v1, v3

    .line 693
    sub-int/2addr v0, v3

    .line 694
    goto :goto_0

    .line 695
    :cond_1
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1094
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 1100
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    if-eqz v0, :cond_1

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 1104
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1105
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->b()V

    goto :goto_0

    .line 1106
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->d()V

    goto :goto_0

    .line 1113
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->g()V

    .line 1121
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->g:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 1122
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->f:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->c()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1123
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1130
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->f()V

    .line 1131
    return-void

    .line 1124
    :cond_4
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1126
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_1
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Ljava/lang/String;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->d()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 389
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->i:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->i:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->l()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 397
    :goto_0
    return-void

    .line 392
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    if-lt v0, v1, :cond_2

    .line 393
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->g()V

    .line 395
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method protected f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1136
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    .line 1137
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:Z

    if-eqz v1, :cond_0

    .line 1138
    iput-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    .line 1139
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->f:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->b([B)V

    .line 1141
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->l:[C

    .line 1142
    if-eqz v0, :cond_1

    .line 1143
    iput-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->l:[C

    .line 1144
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->f:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->b([C)V

    .line 1146
    :cond_1
    return-void
.end method

.method protected final g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1745
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    .line 1746
    if-lez v0, :cond_0

    .line 1747
    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:I

    .line 1748
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->g:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1750
    :cond_0
    return-void
.end method
