.class public final Lorg/codehaus/jackson/impl/Utf8StreamParser;
.super Lorg/codehaus/jackson/impl/StreamBasedParserBase;
.source "Utf8StreamParser.java"


# static fields
.field private static final P:[I

.field private static final Q:[I


# instance fields
.field private R:I

.field protected g:Lorg/codehaus/jackson/ObjectCodec;

.field protected final h:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

.field protected i:[I

.field protected j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->b()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->P:[I

    .line 25
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->a()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Q:[I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V
    .locals 8

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    .line 80
    iput-object p4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->g:Lorg/codehaus/jackson/ObjectCodec;

    .line 81
    iput-object p5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 83
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j()V

    .line 87
    :cond_0
    return-void
.end method

.method private final a([CIIZI)Lorg/codehaus/jackson/JsonToken;
    .locals 9

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 621
    const/4 v1, 0x0

    .line 624
    const/16 v2, 0x2e

    if-ne p3, v2, :cond_11

    .line 625
    add-int/lit8 v2, p2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, p2

    move v3, v2

    move-object v4, p1

    move v2, p3

    .line 629
    :goto_0
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v5, v6, :cond_a

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v5

    if-nez v5, :cond_a

    .line 630
    const/4 v1, 0x1

    .line 645
    :cond_0
    if-nez v0, :cond_1

    .line 646
    const-string v5, "Decimal point not followed by a digit"

    invoke-virtual {p0, v2, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(ILjava/lang/String;)V

    :cond_1
    move v8, v1

    move v1, v0

    move v0, v8

    .line 650
    :goto_1
    const/4 v5, 0x0

    .line 651
    const/16 v6, 0x65

    if-eq v2, v6, :cond_2

    const/16 v6, 0x45

    if-ne v2, v6, :cond_10

    .line 652
    :cond_2
    array-length v6, v4

    if-lt v3, v6, :cond_3

    .line 653
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v3

    .line 654
    const/4 v4, 0x0

    move v8, v4

    move-object v4, v3

    move v3, v8

    .line 656
    :cond_3
    add-int/lit8 v6, v3, 0x1

    int-to-char v2, v2

    aput-char v2, v4, v3

    .line 658
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v2, v3, :cond_4

    .line 659
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 661
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 663
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_f

    .line 664
    :cond_5
    array-length v3, v4

    if-lt v6, v3, :cond_e

    .line 665
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v3

    .line 666
    const/4 v4, 0x0

    move v8, v4

    move-object v4, v3

    move v3, v8

    .line 668
    :goto_2
    add-int/lit8 v6, v3, 0x1

    int-to-char v2, v2

    aput-char v2, v4, v3

    .line 670
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v2, v3, :cond_6

    .line 671
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 673
    :cond_6
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    move v3, v2

    move v2, v5

    move-object v5, v4

    move v4, v6

    .line 677
    :goto_3
    const/16 v6, 0x39

    if-gt v3, v6, :cond_d

    const/16 v6, 0x30

    if-lt v3, v6, :cond_d

    .line 678
    add-int/lit8 v2, v2, 0x1

    .line 679
    array-length v6, v5

    if-lt v4, v6, :cond_7

    .line 680
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v4

    .line 681
    const/4 v5, 0x0

    move v8, v5

    move-object v5, v4

    move v4, v8

    .line 683
    :cond_7
    add-int/lit8 v6, v4, 0x1

    int-to-char v7, v3

    aput-char v7, v5, v4

    .line 684
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v4, v7, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v4

    if-nez v4, :cond_c

    .line 685
    const/4 v0, 0x1

    move v4, v6

    move v8, v0

    move v0, v2

    move v2, v8

    .line 691
    :goto_4
    if-nez v0, :cond_8

    .line 692
    const-string v5, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v3, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(ILjava/lang/String;)V

    :cond_8
    move v3, v4

    .line 697
    :goto_5
    if-nez v2, :cond_9

    .line 698
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 700
    :cond_9
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 703
    invoke-virtual {p0, p4, p5, v1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0

    .line 633
    :cond_a
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    .line 634
    const/16 v5, 0x30

    if-lt v2, v5, :cond_0

    const/16 v5, 0x39

    if-gt v2, v5, :cond_0

    .line 637
    add-int/lit8 v0, v0, 0x1

    .line 638
    array-length v5, v4

    if-lt v3, v5, :cond_b

    .line 639
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v3

    .line 640
    const/4 v4, 0x0

    move v8, v4

    move-object v4, v3

    move v3, v8

    .line 642
    :cond_b
    add-int/lit8 v5, v3, 0x1

    int-to-char v6, v2

    aput-char v6, v4, v3

    move v3, v5

    goto/16 :goto_0

    .line 688
    :cond_c
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    move v4, v6

    goto :goto_3

    :cond_d
    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_4

    :cond_e
    move v3, v6

    goto/16 :goto_2

    :cond_f
    move v3, v2

    move v2, v5

    move-object v5, v4

    move v4, v6

    goto/16 :goto_3

    :cond_10
    move v2, v0

    move v0, v5

    goto :goto_5

    :cond_11
    move v2, p3

    move v3, p2

    move-object v4, p1

    move v8, v0

    move v0, v1

    move v1, v8

    goto/16 :goto_1
.end method

.method private final a([CIZI)Lorg/codehaus/jackson/JsonToken;
    .locals 7

    .prologue
    .line 553
    move v5, p4

    move v2, p2

    move-object v1, p1

    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 555
    invoke-virtual {p0, p3, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 575
    :goto_1
    return-object v0

    .line 557
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 558
    const/16 v0, 0x39

    if-gt v3, v0, :cond_1

    const/16 v0, 0x30

    if-ge v3, v0, :cond_3

    .line 559
    :cond_1
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_2

    const/16 v0, 0x65

    if-eq v3, v0, :cond_2

    const/16 v0, 0x45

    if-ne v3, v0, :cond_4

    :cond_2
    move-object v0, p0

    move v4, p3

    .line 560
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([CIIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 564
    :cond_3
    array-length v0, v1

    if-lt v2, v0, :cond_5

    .line 565
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v0

    .line 566
    const/4 v1, 0x0

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 568
    :goto_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    .line 569
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    .line 570
    goto :goto_0

    .line 571
    :cond_4
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 572
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 575
    invoke-virtual {p0, p3, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private final a(III)Lorg/codehaus/jackson/sym/Name;
    .locals 6

    .prologue
    .line 899
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
.end method

.method private final a(IIII)Lorg/codehaus/jackson/sym/Name;
    .locals 6

    .prologue
    .line 905
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 906
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
.end method

.method private final a([III)Lorg/codehaus/jackson/sym/Name;
    .locals 11

    .prologue
    .line 1257
    shl-int/lit8 v0, p2, 0x2

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1266
    const/4 v1, 0x4

    if-ge p3, v1, :cond_6

    .line 1267
    const/4 v1, 0x1

    sub-int v1, p2, v1

    aget v1, p1, v1

    .line 1269
    const/4 v2, 0x1

    sub-int v2, p2, v2

    const/4 v3, 0x4

    sub-int/2addr v3, p3

    shl-int/lit8 v3, v3, 0x3

    shl-int v3, v1, v3

    aput v3, p1, v2

    .line 1275
    :goto_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->k()[C

    move-result-object v2

    .line 1276
    const/4 v3, 0x0

    .line 1278
    const/4 v4, 0x0

    move v10, v4

    move-object v4, v2

    move v2, v10

    :goto_1
    if-ge v2, v0, :cond_a

    .line 1279
    shr-int/lit8 v5, v2, 0x2

    aget v5, p1, v5

    .line 1280
    and-int/lit8 v6, v2, 0x3

    .line 1281
    const/4 v7, 0x3

    sub-int v6, v7, v6

    shl-int/lit8 v6, v6, 0x3

    shr-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    .line 1282
    add-int/lit8 v2, v2, 0x1

    .line 1284
    const/16 v6, 0x7f

    if-le v5, v6, :cond_e

    .line 1286
    and-int/lit16 v6, v5, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_7

    .line 1287
    and-int/lit8 v5, v5, 0x1f

    .line 1288
    const/4 v6, 0x1

    move v10, v6

    move v6, v5

    move v5, v10

    .line 1299
    :goto_2
    add-int v7, v2, v5

    if-le v7, v0, :cond_0

    .line 1300
    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)V

    .line 1304
    :cond_0
    shr-int/lit8 v7, v2, 0x2

    aget v7, p1, v7

    .line 1305
    and-int/lit8 v8, v2, 0x3

    .line 1306
    const/4 v9, 0x3

    sub-int v8, v9, v8

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1307
    add-int/lit8 v2, v2, 0x1

    .line 1309
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_1

    .line 1310
    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k(I)V

    .line 1312
    :cond_1
    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    .line 1313
    const/4 v7, 0x1

    if-le v5, v7, :cond_d

    .line 1314
    shr-int/lit8 v7, v2, 0x2

    aget v7, p1, v7

    .line 1315
    and-int/lit8 v8, v2, 0x3

    .line 1316
    const/4 v9, 0x3

    sub-int v8, v9, v8

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1317
    add-int/lit8 v2, v2, 0x1

    .line 1319
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_2

    .line 1320
    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k(I)V

    .line 1322
    :cond_2
    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    .line 1323
    const/4 v7, 0x2

    if-le v5, v7, :cond_d

    .line 1324
    shr-int/lit8 v7, v2, 0x2

    aget v7, p1, v7

    .line 1325
    and-int/lit8 v8, v2, 0x3

    .line 1326
    const/4 v9, 0x3

    sub-int v8, v9, v8

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1327
    add-int/lit8 v2, v2, 0x1

    .line 1328
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_3

    .line 1329
    and-int/lit16 v8, v7, 0xff

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k(I)V

    .line 1331
    :cond_3
    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    move v10, v6

    move v6, v2

    move v2, v10

    .line 1334
    :goto_3
    const/4 v7, 0x2

    if-le v5, v7, :cond_c

    .line 1335
    const/high16 v5, 0x10000

    sub-int/2addr v2, v5

    .line 1336
    array-length v5, v4

    if-lt v3, v5, :cond_4

    .line 1337
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->n()[C

    move-result-object v4

    .line 1339
    :cond_4
    add-int/lit8 v5, v3, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v4, v3

    .line 1340
    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    move v3, v6

    move v10, v5

    move-object v5, v4

    move v4, v10

    .line 1343
    :goto_4
    array-length v6, v5

    if-lt v4, v6, :cond_5

    .line 1344
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->n()[C

    move-result-object v5

    .line 1346
    :cond_5
    add-int/lit8 v6, v4, 0x1

    int-to-char v2, v2

    aput-char v2, v5, v4

    move v2, v3

    move-object v4, v5

    move v3, v6

    .line 1347
    goto/16 :goto_1

    .line 1271
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1289
    :cond_7
    and-int/lit16 v6, v5, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_8

    .line 1290
    and-int/lit8 v5, v5, 0xf

    .line 1291
    const/4 v6, 0x2

    move v10, v6

    move v6, v5

    move v5, v10

    goto/16 :goto_2

    .line 1292
    :cond_8
    and-int/lit16 v6, v5, 0xf8

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_9

    .line 1293
    and-int/lit8 v5, v5, 0x7

    .line 1294
    const/4 v6, 0x3

    move v10, v6

    move v6, v5

    move v5, v10

    goto/16 :goto_2

    .line 1296
    :cond_9
    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j(I)V

    .line 1297
    const/4 v5, 0x1

    move v6, v5

    goto/16 :goto_2

    .line 1350
    :cond_a
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v4, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1352
    const/4 v2, 0x4

    if-ge p3, v2, :cond_b

    .line 1353
    const/4 v2, 0x1

    sub-int v2, p2, v2

    aput v1, p1, v2

    .line 1355
    :cond_b
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v1, v0, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0

    :cond_c
    move-object v5, v4

    move v4, v3

    move v3, v6

    goto :goto_4

    :cond_d
    move v10, v6

    move v6, v2

    move v2, v10

    goto :goto_3

    :cond_e
    move v10, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    move v2, v10

    goto :goto_4
.end method

.method private final a([IIII)Lorg/codehaus/jackson/sym/Name;
    .locals 3

    .prologue
    .line 1232
    array-length v0, p1

    if-lt p2, v0, :cond_1

    .line 1233
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 1235
    :goto_0
    add-int/lit8 v1, p2, 0x1

    aput p3, v0, p2

    .line 1236
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v2, v0, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    .line 1237
    if-nez v2, :cond_0

    .line 1238
    invoke-direct {p0, v0, v1, p4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1240
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private final a([CI)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1403
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->P:[I

    .line 1404
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    move v2, p2

    move-object v3, p1

    .line 1411
    :goto_0
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1412
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v4, v5, :cond_0

    .line 1413
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 1414
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1416
    :cond_0
    array-length v5, v3

    if-lt v2, v5, :cond_1

    .line 1417
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v2

    move-object v3, v2

    move v2, v8

    .line 1420
    :cond_1
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    array-length v6, v3

    sub-int/2addr v6, v2

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v9, v4

    move v4, v2

    move v2, v9

    .line 1421
    :goto_1
    if-ge v2, v5, :cond_3

    .line 1422
    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 1423
    aget v7, v0, v2

    if-eqz v7, :cond_2

    .line 1424
    iput v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1432
    const/16 v5, 0x22

    if-ne v2, v5, :cond_4

    .line 1478
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 1479
    return-void

    .line 1427
    :cond_2
    add-int/lit8 v7, v4, 0x1

    int-to-char v2, v2

    aput-char v2, v3, v4

    move v2, v6

    move v4, v7

    goto :goto_1

    .line 1429
    :cond_3
    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    move v2, v4

    .line 1430
    goto :goto_0

    .line 1436
    :cond_4
    aget v5, v0, v2

    packed-switch v5, :pswitch_data_0

    .line 1462
    const/16 v5, 0x20

    if-ge v2, v5, :cond_7

    .line 1464
    const-string v5, "string value"

    invoke-virtual {p0, v2, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    move v9, v4

    move-object v4, v3

    move v3, v9

    .line 1471
    :goto_2
    array-length v5, v4

    if-lt v3, v5, :cond_5

    .line 1472
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v3

    move-object v4, v3

    move v3, v8

    .line 1476
    :cond_5
    add-int/lit8 v5, v3, 0x1

    int-to-char v2, v2

    aput-char v2, v4, v3

    move v2, v5

    move-object v3, v4

    goto :goto_0

    .line 1438
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->N()C

    move-result v2

    move v9, v4

    move-object v4, v3

    move v3, v9

    .line 1439
    goto :goto_2

    .line 1441
    :pswitch_1
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n(I)I

    move-result v2

    move v9, v4

    move-object v4, v3

    move v3, v9

    .line 1442
    goto :goto_2

    .line 1444
    :pswitch_2
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    if-lt v5, v6, :cond_6

    .line 1445
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->p(I)I

    move-result v2

    move v9, v4

    move-object v4, v3

    move v3, v9

    goto :goto_2

    .line 1447
    :cond_6
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->o(I)I

    move-result v2

    move v9, v4

    move-object v4, v3

    move v3, v9

    .line 1449
    goto :goto_2

    .line 1451
    :pswitch_3
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->q(I)I

    move-result v2

    .line 1453
    add-int/lit8 v5, v4, 0x1

    const v6, 0xd800

    shr-int/lit8 v7, v2, 0xa

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v3, v4

    .line 1454
    array-length v4, v3

    if-lt v5, v4, :cond_8

    .line 1455
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v3

    move-object v4, v3

    move v3, v8

    .line 1458
    :goto_3
    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    .line 1460
    goto :goto_2

    .line 1467
    :cond_7
    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i(I)V

    move v9, v4

    move-object v4, v3

    move v3, v9

    goto :goto_2

    :cond_8
    move-object v4, v3

    move v3, v5

    goto :goto_3

    .line 1436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a([II)[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2254
    if-nez p0, :cond_0

    .line 2255
    new-array v0, p1, [I

    .line 2261
    :goto_0
    return-object v0

    .line 2258
    :cond_0
    array-length v0, p0

    .line 2259
    add-int v1, v0, p1

    new-array v1, v1, [I

    .line 2260
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 2261
    goto :goto_0
.end method

.method private final ad()Lorg/codehaus/jackson/JsonToken;
    .locals 4

    .prologue
    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->M:Z

    .line 442
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->J:Lorg/codehaus/jackson/JsonToken;

    .line 443
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->J:Lorg/codehaus/jackson/JsonToken;

    .line 445
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 446
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->G:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->H:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->b(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 450
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    .line 447
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 448
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->G:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->H:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->c(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0
.end method

.method private final ae()I
    .locals 5

    .prologue
    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 587
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 613
    :cond_0
    :goto_0
    return v0

    .line 590
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 592
    if-lt v0, v3, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v3

    .line 593
    goto :goto_0

    .line 596
    :cond_3
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 597
    const-string v1, "Leading zeroes not allowed"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e(Ljava/lang/String;)V

    .line 600
    :cond_4
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 601
    if-ne v0, v3, :cond_0

    .line 602
    :cond_5
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v1, v2, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 604
    if-lt v0, v3, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v3

    .line 605
    goto :goto_0

    .line 607
    :cond_8
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 608
    if-eq v0, v3, :cond_5

    goto :goto_0
.end method

.method private final af()I
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1799
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1800
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1801
    if-le v0, v3, :cond_3

    .line 1802
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 1803
    return v0

    .line 1805
    :cond_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ah()V

    goto :goto_0

    .line 1806
    :cond_3
    if-eq v0, v3, :cond_0

    .line 1807
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1808
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->P()V

    goto :goto_0

    .line 1809
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1810
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->O()V

    goto :goto_0

    .line 1811
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1812
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(I)V

    goto :goto_0

    .line 1816
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private final ag()I
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1822
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1823
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1824
    if-le v0, v3, :cond_3

    .line 1825
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 1841
    :goto_1
    return v0

    .line 1828
    :cond_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ah()V

    goto :goto_0

    .line 1829
    :cond_3
    if-eq v0, v3, :cond_0

    .line 1830
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1831
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->P()V

    goto :goto_0

    .line 1832
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1833
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->O()V

    goto :goto_0

    .line 1834
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1835
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(I)V

    goto :goto_0

    .line 1840
    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->f()V

    .line 1841
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private final ah()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 1847
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1848
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    .line 1851
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1852
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)V

    .line 1854
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1855
    if-ne v0, v3, :cond_2

    .line 1856
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->aj()V

    .line 1862
    :goto_0
    return-void

    .line 1857
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 1858
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ai()V

    goto :goto_0

    .line 1860
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final ai()V
    .locals 4

    .prologue
    .line 1868
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->e()[I

    move-result-object v0

    .line 1871
    :cond_0
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1872
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1873
    aget v2, v0, v1

    .line 1874
    if-eqz v2, :cond_0

    .line 1875
    sparse-switch v2, :sswitch_data_0

    .line 1890
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i(I)V

    goto :goto_0

    .line 1877
    :sswitch_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 1878
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1895
    :goto_1
    return-void

    .line 1883
    :sswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->P()V

    goto :goto_0

    .line 1886
    :sswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->O()V

    goto :goto_0

    .line 1894
    :cond_2
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1875
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final aj()V
    .locals 4

    .prologue
    .line 1901
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->e()[I

    move-result-object v0

    .line 1902
    :cond_0
    :goto_0
    :sswitch_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1903
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1904
    aget v2, v0, v1

    .line 1905
    if-eqz v2, :cond_0

    .line 1906
    sparse-switch v2, :sswitch_data_0

    .line 1917
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i(I)V

    goto :goto_0

    .line 1908
    :sswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->P()V

    .line 1921
    :cond_2
    :goto_1
    return-void

    .line 1911
    :sswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->O()V

    goto :goto_1

    .line 1906
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private ak()I
    .locals 3

    .prologue
    .line 2211
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    .line 2212
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2214
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final b(Lorg/codehaus/jackson/Base64Variant;II)I
    .locals 2

    .prologue
    .line 2383
    const/16 v0, 0x5c

    if-eq p2, v0, :cond_0

    .line 2384
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 2386
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->N()C

    move-result v0

    .line 2388
    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    .line 2389
    if-nez p3, :cond_1

    .line 2390
    const/4 v0, -0x1

    .line 2398
    :goto_0
    return v0

    .line 2394
    :cond_1
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/Base64Variant;->b(I)I

    move-result v1

    .line 2395
    if-gez v1, :cond_2

    .line 2396
    invoke-virtual {p0, p1, v0, p3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2
    move v0, v1

    .line 2398
    goto :goto_0
.end method

.method private final b(II)Lorg/codehaus/jackson/sym/Name;
    .locals 2

    .prologue
    .line 1206
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1207
    if-eqz v0, :cond_0

    .line 1212
    :goto_0
    return-object v0

    .line 1211
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1212
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method private final b(III)Lorg/codehaus/jackson/sym/Name;
    .locals 2

    .prologue
    .line 1219
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1220
    if-eqz v0, :cond_0

    .line 1226
    :goto_0
    return-object v0

    .line 1224
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1225
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1226
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method private final m(I)Lorg/codehaus/jackson/JsonToken;
    .locals 3

    .prologue
    .line 394
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    .line 396
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    .line 436
    :goto_0
    return-object v0

    .line 398
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 436
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->g(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 400
    :sswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->G:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->H:I

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->b(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 401
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 403
    :sswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->G:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->H:I

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->c(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 404
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 409
    :sswitch_2
    const-string v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    .line 411
    :sswitch_3
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 412
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 414
    :sswitch_4
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 415
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 417
    :sswitch_5
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 418
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 434
    :sswitch_6
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 398
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private final n(I)I
    .locals 3

    .prologue
    .line 2033
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    .line 2034
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2036
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    .line 2037
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2038
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2040
    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final o(I)I
    .locals 5

    .prologue
    const/16 v4, 0x80

    .line 2046
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    .line 2047
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2049
    :cond_0
    and-int/lit8 v0, p1, 0xf

    .line 2050
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    .line 2051
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    .line 2052
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2054
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2055
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v1, v2, :cond_2

    .line 2056
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2058
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    .line 2059
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    .line 2060
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2062
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2063
    return v0
.end method

.method private final p(I)I
    .locals 5

    .prologue
    const/16 v4, 0x80

    .line 2069
    and-int/lit8 v0, p1, 0xf

    .line 2070
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    .line 2071
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_0

    .line 2072
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2074
    :cond_0
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2075
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    .line 2076
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    .line 2077
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2079
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2080
    return v0
.end method

.method private final q(I)I
    .locals 5

    .prologue
    const/16 v4, 0x80

    .line 2090
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    .line 2091
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2093
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    .line 2094
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 2095
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2097
    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 2099
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v1, v2, :cond_2

    .line 2100
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2102
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    .line 2103
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    .line 2104
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2106
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2107
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v1, v2, :cond_4

    .line 2108
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2110
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    .line 2111
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_5

    .line 2112
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2118
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    return v0
.end method

.method private final r(I)V
    .locals 3

    .prologue
    .line 2124
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    .line 2125
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2127
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    .line 2128
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2129
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2131
    :cond_1
    return-void
.end method

.method private final s(I)V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 2139
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    .line 2140
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2143
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    .line 2144
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    .line 2145
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2147
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_2

    .line 2148
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2150
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    .line 2151
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    .line 2152
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2154
    :cond_3
    return-void
.end method

.method private final t(I)V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 2159
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    .line 2160
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2162
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    .line 2163
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    .line 2164
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2166
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v1, v2, :cond_2

    .line 2167
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2169
    :cond_2
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    .line 2170
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2172
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_4

    .line 2173
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2175
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    .line 2176
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_5

    .line 2177
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)V

    .line 2179
    :cond_5
    return-void
.end method


# virtual methods
.method protected I()Lorg/codehaus/jackson/sym/Name;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 884
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    .line 885
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)V

    .line 889
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 890
    const/16 v0, 0x22

    if-ne v4, v0, :cond_1

    .line 891
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e()Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 893
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method protected final J()Lorg/codehaus/jackson/sym/Name;
    .locals 11

    .prologue
    const/16 v10, 0x27

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 1093
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    .line 1094
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    const-string v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)V

    .line 1098
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1099
    if-ne v0, v10, :cond_1

    .line 1100
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e()Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1193
    :goto_0
    return-object v0

    .line 1102
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 1109
    sget-object v2, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Q:[I

    move v3, v8

    move-object v4, v1

    move v5, v0

    move v1, v8

    move v0, v8

    .line 1112
    :goto_1
    if-ne v5, v10, :cond_2

    .line 1183
    if-lez v0, :cond_c

    .line 1184
    array-length v2, v4

    if-lt v3, v2, :cond_b

    .line 1185
    array-length v2, v4

    invoke-static {v4, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 1187
    :goto_2
    add-int/lit8 v4, v3, 0x1

    aput v1, v2, v3

    move v1, v4

    .line 1189
    :goto_3
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v3, v2, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 1190
    if-nez v3, :cond_a

    .line 1191
    invoke-direct {p0, v2, v1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1116
    :cond_2
    const/16 v6, 0x22

    if-eq v5, v6, :cond_4

    aget v6, v2, v5

    if-eqz v6, :cond_4

    .line 1117
    const/16 v6, 0x5c

    if-eq v5, v6, :cond_6

    .line 1120
    const-string v6, "name"

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    .line 1130
    :goto_4
    const/16 v6, 0x7f

    if-le v5, v6, :cond_4

    .line 1132
    if-lt v0, v9, :cond_3

    .line 1133
    array-length v0, v4

    if-lt v3, v0, :cond_f

    .line 1134
    array-length v0, v4

    invoke-static {v4, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 1136
    :goto_5
    add-int/lit8 v4, v3, 0x1

    aput v1, v0, v3

    move v1, v8

    move v3, v4

    move-object v4, v0

    move v0, v8

    .line 1140
    :cond_3
    const/16 v6, 0x800

    if-ge v5, v6, :cond_7

    .line 1141
    shl-int/lit8 v1, v1, 0x8

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v1, v6

    .line 1142
    add-int/lit8 v0, v0, 0x1

    .line 1160
    :goto_6
    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    .line 1164
    :cond_4
    if-ge v0, v9, :cond_9

    .line 1165
    add-int/lit8 v0, v0, 0x1

    .line 1166
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v5

    .line 1175
    :goto_7
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v5, v6, :cond_5

    .line 1176
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1177
    const-string v5, " in field name"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)V

    .line 1180
    :cond_5
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    goto :goto_1

    .line 1123
    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->N()C

    move-result v5

    goto :goto_4

    .line 1145
    :cond_7
    shl-int/lit8 v1, v1, 0x8

    shr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v1, v6

    .line 1146
    add-int/lit8 v0, v0, 0x1

    .line 1148
    if-lt v0, v9, :cond_8

    .line 1149
    array-length v0, v4

    if-lt v3, v0, :cond_e

    .line 1150
    array-length v0, v4

    invoke-static {v4, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 1152
    :goto_8
    add-int/lit8 v4, v3, 0x1

    aput v1, v0, v3

    move v1, v8

    move v3, v4

    move-object v4, v0

    move v0, v8

    .line 1156
    :cond_8
    shl-int/lit8 v1, v1, 0x8

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v1, v6

    .line 1157
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1168
    :cond_9
    array-length v0, v4

    if-lt v3, v0, :cond_d

    .line 1169
    array-length v0, v4

    invoke-static {v4, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 1171
    :goto_9
    add-int/lit8 v4, v3, 0x1

    aput v1, v0, v3

    .line 1173
    const/4 v1, 0x1

    move v3, v4

    move-object v4, v0

    move v0, v1

    move v1, v5

    goto :goto_7

    :cond_a
    move-object v0, v3

    goto/16 :goto_0

    :cond_b
    move-object v2, v4

    goto/16 :goto_2

    :cond_c
    move v1, v3

    move-object v2, v4

    goto/16 :goto_3

    :cond_d
    move-object v0, v4

    goto :goto_9

    :cond_e
    move-object v0, v4

    goto :goto_8

    :cond_f
    move-object v0, v4

    goto/16 :goto_5
.end method

.method protected K()V
    .locals 9

    .prologue
    .line 1369
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1370
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    .line 1371
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 1372
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1374
    :cond_0
    const/4 v1, 0x0

    .line 1375
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->k()[C

    move-result-object v2

    .line 1376
    sget-object v3, Lorg/codehaus/jackson/impl/Utf8StreamParser;->P:[I

    .line 1378
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    array-length v5, v2

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1379
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    move v8, v1

    move v1, v0

    move v0, v8

    .line 1380
    :goto_0
    if-ge v1, v4, :cond_2

    .line 1381
    aget-byte v6, v5, v1

    and-int/lit16 v6, v6, 0xff

    .line 1382
    aget v7, v3, v6

    if-eqz v7, :cond_1

    .line 1383
    const/16 v3, 0x22

    if-ne v6, v3, :cond_2

    .line 1384
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1385
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 1395
    :goto_1
    return-void

    .line 1390
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1391
    add-int/lit8 v7, v0, 0x1

    int-to-char v6, v6

    aput-char v6, v2, v0

    move v0, v7

    .line 1392
    goto :goto_0

    .line 1393
    :cond_2
    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1394
    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([CI)V

    goto :goto_1
.end method

.method protected L()V
    .locals 7

    .prologue
    .line 1489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    .line 1492
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->P:[I

    .line 1493
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    .line 1501
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1502
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    .line 1503
    if-lt v2, v3, :cond_4

    .line 1504
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 1505
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1506
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    move v6, v3

    move v3, v2

    move v2, v6

    .line 1508
    :goto_1
    if-ge v3, v2, :cond_0

    .line 1509
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    .line 1510
    aget v5, v0, v3

    if-eqz v5, :cond_3

    .line 1511
    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1518
    const/16 v2, 0x22

    if-ne v3, v2, :cond_1

    .line 1545
    return-void

    .line 1515
    :cond_0
    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    goto :goto_0

    .line 1522
    :cond_1
    aget v2, v0, v3

    packed-switch v2, :pswitch_data_0

    .line 1536
    const/16 v2, 0x20

    if-ge v3, v2, :cond_2

    .line 1538
    const-string v2, "string value"

    invoke-virtual {p0, v3, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 1524
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->N()C

    goto :goto_0

    .line 1527
    :pswitch_1
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r(I)V

    goto :goto_0

    .line 1530
    :pswitch_2
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->s(I)V

    goto :goto_0

    .line 1533
    :pswitch_3
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->t(I)V

    goto :goto_0

    .line 1541
    :cond_2
    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i(I)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_1

    .line 1522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected M()Lorg/codehaus/jackson/JsonToken;
    .locals 11

    .prologue
    const/16 v9, 0x27

    const/4 v8, 0x0

    .line 1588
    .line 1591
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->k()[C

    move-result-object v0

    .line 1594
    sget-object v1, Lorg/codehaus/jackson/impl/Utf8StreamParser;->P:[I

    .line 1595
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    move v3, v8

    .line 1602
    :goto_0
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v4, v5, :cond_0

    .line 1603
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 1605
    :cond_0
    array-length v4, v0

    if-lt v3, v4, :cond_1

    .line 1606
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v0

    move v3, v8

    .line 1609
    :cond_1
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    .line 1611
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    .line 1612
    if-ge v5, v4, :cond_b

    move v4, v3

    move v3, v5

    .line 1616
    :goto_1
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    if-ge v5, v3, :cond_4

    .line 1617
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 1618
    if-eq v5, v9, :cond_2

    aget v6, v1, v5

    if-eqz v6, :cond_3

    .line 1626
    :cond_2
    if-ne v5, v9, :cond_5

    .line 1672
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 1674
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    .line 1621
    :cond_3
    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v4

    move v4, v6

    goto :goto_1

    :cond_4
    move v3, v4

    .line 1623
    goto :goto_0

    .line 1630
    :cond_5
    aget v3, v1, v5

    packed-switch v3, :pswitch_data_0

    .line 1658
    const/16 v3, 0x20

    if-ge v5, v3, :cond_6

    .line 1659
    const-string v3, "string value"

    invoke-virtual {p0, v5, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    .line 1662
    :cond_6
    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i(I)V

    :cond_7
    move v3, v4

    move v4, v5

    .line 1665
    :goto_2
    array-length v5, v0

    if-lt v3, v5, :cond_8

    .line 1666
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v0

    move v3, v8

    .line 1670
    :cond_8
    add-int/lit8 v5, v3, 0x1

    int-to-char v4, v4

    aput-char v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 1632
    :pswitch_0
    const/16 v3, 0x22

    if-eq v5, v3, :cond_7

    .line 1633
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->N()C

    move-result v3

    move v10, v4

    move v4, v3

    move v3, v10

    goto :goto_2

    .line 1637
    :pswitch_1
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n(I)I

    move-result v3

    move v10, v4

    move v4, v3

    move v3, v10

    .line 1638
    goto :goto_2

    .line 1640
    :pswitch_2
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    sub-int/2addr v3, v6

    const/4 v6, 0x2

    if-lt v3, v6, :cond_9

    .line 1641
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->p(I)I

    move-result v3

    move v10, v4

    move v4, v3

    move v3, v10

    goto :goto_2

    .line 1643
    :cond_9
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->o(I)I

    move-result v3

    move v10, v4

    move v4, v3

    move v3, v10

    .line 1645
    goto :goto_2

    .line 1647
    :pswitch_3
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->q(I)I

    move-result v3

    .line 1649
    add-int/lit8 v5, v4, 0x1

    const v6, 0xd800

    shr-int/lit8 v7, v3, 0xa

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v0, v4

    .line 1650
    array-length v4, v0

    if-lt v5, v4, :cond_a

    .line 1651
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v0

    move v4, v8

    .line 1654
    :goto_3
    const v5, 0xdc00

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v3, v5

    move v10, v4

    move v4, v3

    move v3, v10

    .line 1656
    goto :goto_2

    :cond_a
    move v4, v5

    goto :goto_3

    :cond_b
    move v10, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_1

    .line 1630
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final N()C
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1926
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    .line 1927
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1928
    const-string v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)V

    .line 1931
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    .line 1933
    sparse-switch v0, :sswitch_data_0

    .line 1956
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(C)C

    move-result v0

    .line 1974
    :goto_0
    return v0

    .line 1936
    :sswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 1938
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 1940
    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 1942
    :sswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 1944
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 1950
    :sswitch_5
    int-to-char v0, v0

    goto :goto_0

    :sswitch_6
    move v0, v3

    move v1, v3

    .line 1961
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 1962
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v2, v3, :cond_1

    .line 1963
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1964
    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)V

    .line 1967
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v2, v2, v3

    .line 1968
    invoke-static {v2}, Lorg/codehaus/jackson/util/CharTypes;->a(I)I

    move-result v3

    .line 1969
    if-gez v3, :cond_2

    .line 1970
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    .line 1972
    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 1961
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1974
    :cond_3
    int-to-char v0, v1

    goto :goto_0

    .line 1933
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x2f -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected final O()V
    .locals 2

    .prologue
    .line 2193
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2194
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2195
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 2198
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->D:I

    .line 2199
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->E:I

    .line 2200
    return-void
.end method

.method protected final P()V
    .locals 1

    .prologue
    .line 2204
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->D:I

    .line 2205
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->E:I

    .line 2206
    return-void
.end method

.method protected a(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
    .locals 1

    .prologue
    .line 2404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .prologue
    .line 2415
    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    .line 2416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal white space character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2425
    :goto_0
    if-eqz p4, :cond_0

    .line 2426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2428
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 2417
    :cond_1
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/Base64Variant;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected padding character (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2419
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2421
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2423
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected final a(Lorg/codehaus/jackson/JsonToken;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 125
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser$1;->a:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected a(IZ)Lorg/codehaus/jackson/JsonToken;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v5, 0x7ff0000000000000L

    const-wide/high16 v3, -0x10000000000000L

    .line 1684
    const/16 v0, 0x49

    if-ne p1, v0, :cond_9

    .line 1685
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_0

    .line 1686
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1687
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i()V

    .line 1690
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    .line 1691
    const/16 v1, 0x4e

    if-ne v0, v1, :cond_5

    .line 1692
    if-eqz p2, :cond_1

    const-string v1, "-INF"

    .line 1693
    :goto_0
    invoke-virtual {p0, v1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1694
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1695
    if-eqz p2, :cond_2

    move-wide v2, v3

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1710
    :goto_2
    return-object v0

    .line 1692
    :cond_1
    const-string v1, "+INF"

    goto :goto_0

    :cond_2
    move-wide v2, v5

    .line 1695
    goto :goto_1

    .line 1697
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-standard token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Ljava/lang/String;)V

    .line 1709
    :cond_4
    :goto_3
    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(ILjava/lang/String;)V

    .line 1710
    const/4 v0, 0x0

    goto :goto_2

    .line 1699
    :cond_5
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_4

    .line 1700
    if-eqz p2, :cond_6

    const-string v1, "-Infinity"

    .line 1701
    :goto_4
    invoke-virtual {p0, v1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1702
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1703
    if-eqz p2, :cond_7

    move-wide v2, v3

    :goto_5
    invoke-virtual {p0, v1, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 1700
    :cond_6
    const-string v1, "+Infinity"

    goto :goto_4

    :cond_7
    move-wide v2, v5

    .line 1703
    goto :goto_5

    .line 1705
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-standard token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move v0, p1

    goto :goto_3
.end method

.method protected final a(I[I)Lorg/codehaus/jackson/sym/Name;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x22

    .line 779
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 780
    aget v1, p2, v0

    if-eqz v1, :cond_1

    .line 781
    if-ne v0, v4, :cond_0

    .line 782
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->R:I

    invoke-direct {p0, v0, p1, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 812
    :goto_0
    return-object v0

    .line 784
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->R:I

    invoke-direct {p0, v1, p1, v0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 786
    :cond_1
    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    .line 787
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 788
    aget v2, p2, v1

    if-eqz v2, :cond_3

    .line 789
    if-ne v1, v4, :cond_2

    .line 790
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->R:I

    invoke-direct {p0, v1, v0, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 792
    :cond_2
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->R:I

    invoke-direct {p0, v2, v0, v1, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 794
    :cond_3
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 795
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 796
    aget v2, p2, v1

    if-eqz v2, :cond_5

    .line 797
    if-ne v1, v4, :cond_4

    .line 798
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->R:I

    invoke-direct {p0, v1, v0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 800
    :cond_4
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->R:I

    invoke-direct {p0, v2, v0, v1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 802
    :cond_5
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 803
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 804
    aget v2, p2, v1

    if-eqz v2, :cond_7

    .line 805
    if-ne v1, v4, :cond_6

    .line 806
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->R:I

    invoke-direct {p0, v1, v0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 808
    :cond_6
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->R:I

    invoke-direct {p0, v2, v0, v1, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 810
    :cond_7
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    const/4 v3, 0x0

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->R:I

    aput v4, v2, v3

    .line 811
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    aput v0, v2, v5

    .line 812
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method protected a([IIIII)Lorg/codehaus/jackson/sym/Name;
    .locals 9

    .prologue
    .line 925
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Q:[I

    move v1, p5

    move v2, p4

    move v3, p3

    move v4, p2

    move-object v5, p1

    .line 928
    :goto_0
    aget v6, v0, v2

    if-eqz v6, :cond_2

    .line 929
    const/16 v6, 0x22

    if-ne v2, v6, :cond_0

    .line 998
    if-lez v1, :cond_a

    .line 999
    array-length v0, v5

    if-lt v4, v0, :cond_9

    .line 1000
    array-length v0, v5

    invoke-static {v5, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 1002
    :goto_1
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v8, v2

    move-object v2, v0

    move v0, v8

    .line 1004
    :goto_2
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v3, v2, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 1005
    if-nez v3, :cond_8

    .line 1006
    invoke-direct {p0, v2, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1008
    :goto_3
    return-object v0

    .line 933
    :cond_0
    const/16 v6, 0x5c

    if-eq v2, v6, :cond_4

    .line 935
    const-string v6, "name"

    invoke-virtual {p0, v2, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    .line 945
    :goto_4
    const/16 v6, 0x7f

    if-le v2, v6, :cond_2

    .line 947
    const/4 v6, 0x4

    if-lt v1, v6, :cond_1

    .line 948
    array-length v1, v5

    if-lt v4, v1, :cond_d

    .line 949
    array-length v1, v5

    invoke-static {v5, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 951
    :goto_5
    add-int/lit8 v5, v4, 0x1

    aput v3, v1, v4

    .line 952
    const/4 v3, 0x0

    .line 953
    const/4 v4, 0x0

    move v8, v4

    move v4, v5

    move-object v5, v1

    move v1, v8

    .line 955
    :cond_1
    const/16 v6, 0x800

    if-ge v2, v6, :cond_5

    .line 956
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v2, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v3, v6

    .line 957
    add-int/lit8 v1, v1, 0x1

    .line 975
    :goto_6
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    .line 979
    :cond_2
    const/4 v6, 0x4

    if-ge v1, v6, :cond_7

    .line 980
    add-int/lit8 v1, v1, 0x1

    .line 981
    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move v3, v4

    move-object v4, v5

    .line 990
    :goto_7
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v5, v6, :cond_3

    .line 991
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v5

    if-nez v5, :cond_3

    .line 992
    const-string v5, " in field name"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)V

    .line 995
    :cond_3
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    move v8, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    move v2, v8

    goto/16 :goto_0

    .line 938
    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->N()C

    move-result v2

    goto :goto_4

    .line 960
    :cond_5
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v2, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v3, v6

    .line 961
    add-int/lit8 v1, v1, 0x1

    .line 963
    const/4 v6, 0x4

    if-lt v1, v6, :cond_6

    .line 964
    array-length v1, v5

    if-lt v4, v1, :cond_c

    .line 965
    array-length v1, v5

    invoke-static {v5, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 967
    :goto_8
    add-int/lit8 v5, v4, 0x1

    aput v3, v1, v4

    .line 968
    const/4 v3, 0x0

    .line 969
    const/4 v4, 0x0

    move v8, v4

    move v4, v5

    move-object v5, v1

    move v1, v8

    .line 971
    :cond_6
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v3, v6

    .line 972
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 983
    :cond_7
    array-length v1, v5

    if-lt v4, v1, :cond_b

    .line 984
    array-length v1, v5

    invoke-static {v5, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 986
    :goto_9
    add-int/lit8 v5, v4, 0x1

    aput v3, v1, v4

    .line 988
    const/4 v3, 0x1

    move-object v4, v1

    move v1, v3

    move v3, v5

    goto :goto_7

    :cond_8
    move-object v0, v3

    goto/16 :goto_3

    :cond_9
    move-object v0, v5

    goto/16 :goto_1

    :cond_a
    move v0, v4

    move-object v2, v5

    goto/16 :goto_2

    :cond_b
    move-object v1, v5

    goto :goto_9

    :cond_c
    move-object v1, v5

    goto :goto_8

    :cond_d
    move-object v1, v5

    goto/16 :goto_5
.end method

.method protected a(II)V
    .locals 0

    .prologue
    .line 2248
    iput p2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 2249
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k(I)V

    .line 2250
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1776
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1787
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Ljava/lang/String;)V

    .line 1788
    return-void

    .line 1779
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    .line 1780
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h(I)I

    move-result v1

    int-to-char v1, v1

    .line 1781
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1784
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1738
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p2

    .line 1741
    :cond_0
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v2, v3, :cond_1

    .line 1742
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1743
    const-string v2, " in a value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)V

    .line 1746
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v2, v2, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1747
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :cond_2
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1750
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    .line 1753
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v2, :cond_3

    .line 1754
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v5

    .line 1764
    :goto_0
    return v0

    .line 1758
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h(I)I

    move-result v0

    int-to-char v0, v0

    .line 1760
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1761
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1762
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v5

    .line 1764
    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->O:[B

    if-nez v0, :cond_1

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Ljava/lang/String;)V

    .line 235
    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    if-eqz v0, :cond_2

    .line 237
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->O:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    .line 246
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->O:[B

    return-object v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method protected b(Lorg/codehaus/jackson/JsonToken;)V
    .locals 6

    .prologue
    .line 1717
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asByteArray()[B

    move-result-object v0

    .line 1718
    const/4 v1, 0x1

    .line 1720
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1721
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v3, v4, :cond_0

    .line 1722
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 1724
    :cond_0
    aget-byte v3, v0, v1

    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_1

    .line 1725
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'null\', \'true\' or \'false\'"

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    :cond_1
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 1720
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1733
    :cond_2
    return-void
.end method

.method protected b(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x22

    const/4 v5, -0x2

    .line 2274
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ac()Lorg/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v0

    .line 2281
    :cond_0
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v1, v2, :cond_1

    .line 2282
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2284
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 2285
    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 2286
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->b(I)I

    move-result v2

    .line 2287
    if-gez v2, :cond_11

    .line 2288
    if-ne v1, v6, :cond_2

    .line 2289
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    .line 2357
    :goto_1
    return-object v0

    .line 2291
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/Base64Variant;II)I

    move-result v1

    .line 2292
    if-ltz v1, :cond_0

    .line 2300
    :goto_2
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v2, v3, :cond_3

    .line 2301
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2303
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 2304
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->b(I)I

    move-result v3

    .line 2305
    if-gez v3, :cond_10

    .line 2306
    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/Base64Variant;II)I

    move-result v2

    .line 2308
    :goto_3
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 2311
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v2, v3, :cond_4

    .line 2312
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2314
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 2315
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->b(I)I

    move-result v3

    .line 2318
    if-gez v3, :cond_8

    .line 2319
    if-eq v3, v5, :cond_f

    .line 2321
    if-ne v2, v6, :cond_5

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2322
    shr-int/lit8 v1, v1, 0x4

    .line 2323
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 2324
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    goto :goto_1

    .line 2326
    :cond_5
    const/4 v3, 0x2

    invoke-direct {p0, p1, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/Base64Variant;II)I

    move-result v2

    .line 2328
    :goto_4
    if-ne v2, v5, :cond_9

    .line 2330
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v2, v3, :cond_6

    .line 2331
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2333
    :cond_6
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 2334
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->a(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected padding character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v7, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 2338
    :cond_7
    shr-int/lit8 v1, v1, 0x4

    .line 2339
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 2344
    :cond_9
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 2346
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v2, v3, :cond_a

    .line 2347
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 2349
    :cond_a
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 2350
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->b(I)I

    move-result v3

    .line 2351
    if-gez v3, :cond_c

    .line 2352
    if-eq v3, v5, :cond_e

    .line 2354
    if-ne v2, v6, :cond_b

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->a()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2355
    shr-int/lit8 v1, v1, 0x2

    .line 2356
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b(I)V

    .line 2357
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    goto/16 :goto_1

    .line 2359
    :cond_b
    invoke-direct {p0, p1, v2, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/Base64Variant;II)I

    move-result v2

    .line 2361
    :goto_5
    if-ne v2, v5, :cond_d

    .line 2368
    shr-int/lit8 v1, v1, 0x2

    .line 2369
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b(I)V

    goto/16 :goto_0

    :cond_c
    move v2, v3

    .line 2374
    :cond_d
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 2375
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c(I)V

    goto/16 :goto_0

    :cond_e
    move v2, v3

    goto :goto_5

    :cond_f
    move v2, v3

    goto/16 :goto_4

    :cond_10
    move v2, v3

    goto/16 :goto_3

    :cond_11
    move v1, v2

    goto/16 :goto_2
.end method

.method protected final c(I)Lorg/codehaus/jackson/JsonToken;
    .locals 11

    .prologue
    const/16 v10, 0x39

    const/16 v3, 0x2d

    const/4 v2, 0x0

    const/16 v9, 0x30

    const/4 v8, 0x1

    .line 486
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->k()[C

    move-result-object v1

    .line 488
    if-ne p1, v3, :cond_2

    move v4, v8

    .line 491
    :goto_0
    if-eqz v4, :cond_3

    .line 492
    add-int/lit8 v0, v2, 0x1

    aput-char v3, v1, v2

    .line 494
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v2, v3, :cond_0

    .line 495
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()V

    .line 497
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 499
    if-lt v2, v9, :cond_1

    if-le v2, v10, :cond_4

    .line 500
    :cond_1
    invoke-virtual {p0, v2, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 540
    :goto_1
    return-object v0

    :cond_2
    move v4, v2

    .line 488
    goto :goto_0

    :cond_3
    move v0, v2

    move v2, p1

    .line 505
    :cond_4
    if-ne v2, v9, :cond_5

    .line 506
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ae()I

    move-result v2

    .line 510
    :cond_5
    add-int/lit8 v3, v0, 0x1

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 514
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    array-length v2, v1

    add-int/2addr v0, v2

    .line 515
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-le v0, v2, :cond_b

    .line 516
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    move v5, v8

    move v2, v3

    .line 521
    :goto_2
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    if-lt v3, v0, :cond_6

    .line 523
    invoke-direct {p0, v1, v2, v4, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([CIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 525
    :cond_6
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    .line 526
    if-lt v3, v9, :cond_7

    if-le v3, v10, :cond_9

    .line 532
    :cond_7
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_8

    const/16 v0, 0x65

    if-eq v3, v0, :cond_8

    const/16 v0, 0x45

    if-ne v3, v0, :cond_a

    :cond_8
    move-object v0, p0

    .line 533
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([CIIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 529
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 530
    add-int/lit8 v6, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v6

    goto :goto_2

    .line 536
    :cond_a
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    sub-int/2addr v0, v8

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    .line 537
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 540
    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_b
    move v5, v8

    move v2, v3

    goto :goto_2
.end method

.method public close()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->close()V

    .line 458
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->b()V

    .line 459
    return-void
.end method

.method public d()Lorg/codehaus/jackson/JsonToken;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x7d

    const/16 v6, 0x5d

    const/4 v5, 0x1

    .line 267
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 268
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ad()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    .line 270
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->L()V

    .line 274
    :cond_1
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ag()I

    move-result v0

    .line 275
    if-gez v0, :cond_2

    .line 279
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->close()V

    .line 280
    iput-object v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v8

    goto :goto_0

    .line 286
    :cond_2
    iget-wide v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->C:J

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->F:J

    .line 287
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->D:I

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->G:I

    .line 288
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->E:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->H:I

    .line 291
    iput-object v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->O:[B

    .line 294
    if-ne v0, v6, :cond_4

    .line 295
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->h()Z

    move-result v1

    if-nez v1, :cond_3

    .line 296
    invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IC)V

    .line 298
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->b()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 299
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 301
    :cond_4
    if-ne v0, v7, :cond_6

    .line 302
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->j()Z

    move-result v1

    if-nez v1, :cond_5

    .line 303
    invoke-virtual {p0, v0, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IC)V

    .line 305
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->b()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 306
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 310
    :cond_6
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 311
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_7

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was expecting comma to separate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    .line 314
    :cond_7
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->af()I

    move-result v0

    .line 321
    :cond_8
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->j()Z

    move-result v1

    if-nez v1, :cond_9

    .line 322
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->m(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_0

    .line 325
    :cond_9
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/Name;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->a(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    .line 328
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->af()I

    move-result v0

    .line 329
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_a

    .line 330
    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    .line 332
    :cond_a
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->af()I

    move-result v0

    .line 335
    const/16 v1, 0x22

    if-ne v0, v1, :cond_b

    .line 336
    iput-boolean v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    .line 337
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->J:Lorg/codehaus/jackson/JsonToken;

    .line 338
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 342
    :cond_b
    sparse-switch v0, :sswitch_data_0

    .line 385
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->g(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 387
    :goto_1
    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->J:Lorg/codehaus/jackson/JsonToken;

    .line 388
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 344
    :sswitch_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 347
    :sswitch_1
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 353
    :sswitch_2
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    .line 355
    :sswitch_3
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 356
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 359
    :sswitch_4
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 360
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 363
    :sswitch_5
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 364
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 382
    :sswitch_6
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 342
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method protected final d(I)Lorg/codehaus/jackson/sym/Name;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x22

    .line 715
    if-eq p1, v5, :cond_0

    .line 716
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->f(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 772
    :goto_0
    return-object v0

    .line 719
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v0, v0, 0x9

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-le v0, v1, :cond_1

    .line 720
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I()Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 729
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    .line 730
    sget-object v1, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Q:[I

    .line 732
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 734
    aget v3, v1, v2

    if-nez v3, :cond_a

    .line 735
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 736
    aget v4, v1, v3

    if-nez v4, :cond_8

    .line 737
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 738
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 739
    aget v4, v1, v3

    if-nez v4, :cond_6

    .line 740
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 741
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 742
    aget v4, v1, v3

    if-nez v4, :cond_4

    .line 743
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 744
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 745
    aget v3, v1, v0

    if-nez v3, :cond_2

    .line 746
    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->R:I

    .line 747
    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(I[I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_2
    if-ne v0, v5, :cond_3

    .line 750
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 752
    :cond_3
    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 754
    :cond_4
    if-ne v3, v5, :cond_5

    .line 755
    invoke-direct {p0, v2, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 757
    :cond_5
    invoke-direct {p0, v2, v3, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 759
    :cond_6
    if-ne v3, v5, :cond_7

    .line 760
    invoke-direct {p0, v2, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 762
    :cond_7
    invoke-direct {p0, v2, v3, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 764
    :cond_8
    if-ne v3, v5, :cond_9

    .line 765
    invoke-direct {p0, v2, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 767
    :cond_9
    invoke-direct {p0, v2, v3, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 769
    :cond_a
    if-ne v2, v5, :cond_b

    .line 770
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->e()Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 772
    :cond_b
    invoke-direct {p0, v4, v2, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected e(I)Lorg/codehaus/jackson/sym/Name;
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x4

    const/4 v5, 0x2

    const/16 v8, 0x22

    .line 819
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Q:[I

    move v2, v5

    move v4, p1

    .line 827
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    sub-int/2addr v1, v6

    if-ge v1, v11, :cond_0

    .line 828
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 864
    :goto_1
    return-object v0

    .line 832
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v6

    and-int/lit16 v9, v1, 0xff

    .line 833
    aget v1, v0, v9

    if-eqz v1, :cond_2

    .line 834
    if-ne v9, v8, :cond_1

    .line 835
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    invoke-direct {p0, v0, v2, v4, v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 837
    :cond_1
    iget-object v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    move-object v5, p0

    move v7, v2

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 840
    :cond_2
    shl-int/lit8 v1, v4, 0x8

    or-int v6, v1, v9

    .line 841
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v4

    and-int/lit16 v4, v1, 0xff

    .line 842
    aget v1, v0, v4

    if-eqz v1, :cond_4

    .line 843
    if-ne v4, v8, :cond_3

    .line 844
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    invoke-direct {p0, v0, v2, v6, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 846
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 849
    :cond_4
    shl-int/lit8 v1, v6, 0x8

    or-int v6, v1, v4

    .line 850
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v4

    and-int/lit16 v4, v1, 0xff

    .line 851
    aget v1, v0, v4

    if-eqz v1, :cond_6

    .line 852
    if-ne v4, v8, :cond_5

    .line 853
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v6, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 855
    :cond_5
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 858
    :cond_6
    shl-int/lit8 v1, v6, 0x8

    or-int v6, v1, v4

    .line 859
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v1, v1, v4

    and-int/lit16 v4, v1, 0xff

    .line 860
    aget v1, v0, v4

    if-eqz v1, :cond_8

    .line 861
    if-ne v4, v8, :cond_7

    .line 862
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    invoke-direct {p0, v0, v2, v6, v11}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_1

    .line 864
    :cond_7
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    move-object v0, p0

    move v3, v6

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_1

    .line 868
    :cond_8
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    array-length v1, v1

    if-lt v2, v1, :cond_9

    .line 869
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    invoke-static {v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 871
    :cond_9
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    add-int/lit8 v7, v2, 0x1

    aput v6, v1, v2

    move v2, v7

    .line 873
    goto/16 :goto_0
.end method

.method protected final f(I)Lorg/codehaus/jackson/sym/Name;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1021
    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->J()Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1082
    :goto_0
    return-object v0

    .line 1025
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1026
    const-string v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    .line 1032
    :cond_1
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->d()[I

    move-result-object v0

    .line 1034
    aget v1, v0, p1

    if-eqz v1, :cond_2

    .line 1035
    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    .line 1042
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    move v3, v2

    move-object v4, v1

    move v5, p1

    move v1, v2

    .line 1049
    :goto_1
    const/4 v6, 0x4

    if-ge v1, v6, :cond_4

    .line 1050
    add-int/lit8 v1, v1, 0x1

    .line 1051
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v5

    .line 1060
    :goto_2
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v5, v6, :cond_3

    .line 1061
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1062
    const-string v5, " in field name"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)V

    .line 1065
    :cond_3
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    .line 1066
    aget v6, v0, v5

    if-eqz v6, :cond_5

    .line 1072
    if-lez v1, :cond_8

    .line 1073
    array-length v0, v4

    if-lt v3, v0, :cond_7

    .line 1074
    array-length v0, v4

    invoke-static {v4, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 1076
    :goto_3
    add-int/lit8 v4, v3, 0x1

    aput v2, v0, v3

    move-object v2, v0

    move v0, v4

    .line 1078
    :goto_4
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v3, v2, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 1079
    if-nez v3, :cond_6

    .line 1080
    invoke-direct {p0, v2, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1053
    :cond_4
    array-length v1, v4

    if-lt v3, v1, :cond_9

    .line 1054
    array-length v1, v4

    invoke-static {v4, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:[I

    .line 1056
    :goto_5
    add-int/lit8 v4, v3, 0x1

    aput v2, v1, v3

    .line 1058
    const/4 v2, 0x1

    move v3, v4

    move-object v4, v1

    move v1, v2

    move v2, v5

    goto :goto_2

    .line 1069
    :cond_5
    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    goto :goto_1

    :cond_6
    move-object v0, v3

    goto/16 :goto_0

    :cond_7
    move-object v0, v4

    goto :goto_3

    :cond_8
    move v0, v3

    move-object v2, v4

    goto :goto_4

    :cond_9
    move-object v1, v4

    goto :goto_5
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    .line 110
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 111
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    .line 113
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K()V

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->f()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonToken;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected g(I)Lorg/codehaus/jackson/JsonToken;
    .locals 3

    .prologue
    .line 1557
    sparse-switch p1, :sswitch_data_0

    .line 1581
    :cond_0
    :goto_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    .line 1582
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1559
    :sswitch_0
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->M()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1564
    :sswitch_1
    const-string v0, "NaN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1565
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1566
    const-string v0, "NaN"

    const-wide/high16 v1, 0x7ff8000000000000L

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1568
    :cond_1
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Ljava/lang/String;)V

    .line 1570
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const-string v1, "expected \'NaN\' or a valid value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1573
    :sswitch_2
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B:I

    if-lt v0, v1, :cond_3

    .line 1574
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1575
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i()V

    .line 1578
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1557
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected h(I)I
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x80

    const/4 v4, 0x1

    .line 1980
    .line 1981
    if-gez p1, :cond_7

    .line 1985
    and-int/lit16 v0, p1, 0xe0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    .line 1986
    and-int/lit8 v0, p1, 0x1f

    move v1, v0

    move v0, v4

    .line 2000
    :goto_0
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ak()I

    move-result v2

    .line 2001
    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v5, :cond_0

    .line 2002
    and-int/lit16 v3, v2, 0xff

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k(I)V

    .line 2004
    :cond_0
    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    .line 2006
    if-le v0, v4, :cond_6

    .line 2007
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ak()I

    move-result v2

    .line 2008
    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v5, :cond_1

    .line 2009
    and-int/lit16 v3, v2, 0xff

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k(I)V

    .line 2011
    :cond_1
    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    .line 2012
    if-le v0, v6, :cond_6

    .line 2013
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ak()I

    move-result v0

    .line 2014
    and-int/lit16 v2, v0, 0xc0

    if-eq v2, v5, :cond_2

    .line 2015
    and-int/lit16 v2, v0, 0xff

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k(I)V

    .line 2017
    :cond_2
    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 2021
    :goto_1
    return v0

    .line 1988
    :cond_3
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_4

    .line 1989
    and-int/lit8 v0, p1, 0xf

    move v1, v0

    move v0, v6

    .line 1990
    goto :goto_0

    .line 1991
    :cond_4
    and-int/lit16 v0, p1, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_5

    .line 1993
    and-int/lit8 v0, p1, 0x7

    .line 1994
    const/4 v1, 0x3

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    .line 1996
    :cond_5
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j(I)V

    move v0, v4

    move v1, p1

    .line 1997
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v0, p1

    goto :goto_1
.end method

.method protected i(I)V
    .locals 1

    .prologue
    .line 2227
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 2228
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(I)V

    .line 2230
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j(I)V

    .line 2231
    return-void
.end method

.method protected j(I)V
    .locals 2

    .prologue
    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Ljava/lang/String;)V

    .line 2237
    return-void
.end method

.method public k()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->g:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method protected k(I)V
    .locals 2

    .prologue
    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Ljava/lang/String;)V

    .line 2243
    return-void
.end method

.method public t()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_4

    .line 143
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser$1;->a:[I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 170
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->M:Z

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->a()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 149
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->L:[C

    if-nez v2, :cond_2

    .line 150
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->y:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/io/IOContext;->a(I)[C

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->L:[C

    .line 154
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->L:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->M:Z

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->L:[C

    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->L:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 152
    new-array v2, v1, [C

    iput-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->L:[C

    goto :goto_1

    .line 160
    :pswitch_1
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    if-eqz v0, :cond_3

    .line 161
    iput-boolean v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    .line 162
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K()V

    .line 167
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->e()[C

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public u()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser$1;->a:[I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 199
    :goto_0
    return v0

    .line 184
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 186
    :pswitch_1
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    if-eqz v0, :cond_0

    .line 187
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    .line 188
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K()V

    .line 193
    :cond_0
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->c()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 199
    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public v()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser$1;->a:[I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v2

    .line 221
    :goto_0
    return v0

    :pswitch_0
    move v0, v2

    .line 209
    goto :goto_0

    .line 211
    :pswitch_1
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    if-eqz v0, :cond_1

    .line 212
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:Z

    .line 213
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K()V

    .line 218
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->d()I

    move-result v0

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
