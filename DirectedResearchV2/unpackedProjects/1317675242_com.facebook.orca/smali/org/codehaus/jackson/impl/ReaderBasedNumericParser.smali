.class public abstract Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;
.super Lorg/codehaus/jackson/impl/ReaderBasedParserBase;
.source "ReaderBasedNumericParser.java"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V

    .line 29
    return-void
.end method

.method private final I()C
    .locals 5

    .prologue
    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 303
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    aget-char v0, v0, v1

    .line 308
    if-lt v0, v3, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v3

    .line 309
    goto :goto_0

    .line 311
    :cond_3
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 312
    const-string v1, "Leading zeroes not allowed"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e(Ljava/lang/String;)V

    .line 315
    :cond_4
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    .line 316
    if-ne v0, v3, :cond_0

    .line 317
    :cond_5
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B:I

    if-lt v1, v2, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    aget-char v0, v0, v1

    .line 319
    if-lt v0, v3, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v3

    .line 320
    goto :goto_0

    .line 322
    :cond_8
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    .line 323
    if-eq v0, v3, :cond_5

    goto :goto_0
.end method

.method private final a(Z)Lorg/codehaus/jackson/JsonToken;
    .locals 14

    .prologue
    const/16 v8, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 178
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->k()[C

    move-result-object v0

    .line 182
    if-eqz p1, :cond_18

    .line 183
    add-int/lit8 v1, v9, 0x1

    aput-char v8, v0, v9

    .line 188
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B:I

    if-ge v2, v3, :cond_b

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    aget-char v2, v2, v3

    .line 189
    :goto_1
    if-ne v2, v11, :cond_0

    .line 190
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->I()C

    move-result v2

    :cond_0
    move-object v3, v0

    move v0, v2

    move v2, v1

    move v1, v9

    .line 196
    :goto_2
    if-lt v0, v11, :cond_17

    if-gt v0, v12, :cond_17

    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 198
    array-length v4, v3

    if-lt v2, v4, :cond_1

    .line 199
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v2

    move-object v3, v2

    move v2, v9

    .line 202
    :cond_1
    add-int/lit8 v4, v2, 0x1

    aput-char v0, v3, v2

    .line 203
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B:I

    if-lt v0, v2, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v10

    move v2, v1

    move v1, v9

    move v13, v4

    move-object v4, v3

    move v3, v13

    .line 212
    :goto_3
    if-nez v2, :cond_2

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing integer part (next char "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e(Ljava/lang/String;)V

    .line 218
    :cond_2
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_16

    .line 219
    add-int/lit8 v5, v3, 0x1

    aput-char v1, v4, v3

    move v3, v1

    move v1, v9

    move v13, v5

    move-object v5, v4

    move v4, v13

    .line 223
    :goto_4
    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    iget v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B:I

    if-lt v6, v7, :cond_d

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a()Z

    move-result v6

    if-nez v6, :cond_d

    move v0, v10

    .line 239
    :cond_3
    if-nez v1, :cond_4

    .line 240
    const-string v6, "Decimal point not followed by a digit"

    invoke-virtual {p0, v3, v6}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->c(ILjava/lang/String;)V

    :cond_4
    move v13, v1

    move v1, v0

    move v0, v13

    .line 245
    :goto_5
    const/16 v6, 0x65

    if-eq v3, v6, :cond_5

    const/16 v6, 0x45

    if-ne v3, v6, :cond_15

    .line 246
    :cond_5
    array-length v6, v5

    if-lt v4, v6, :cond_6

    .line 247
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v4

    move-object v5, v4

    move v4, v9

    .line 250
    :cond_6
    add-int/lit8 v6, v4, 0x1

    aput-char v3, v5, v4

    .line 252
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B:I

    if-ge v3, v4, :cond_f

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    aget-char v3, v3, v4

    .line 255
    :goto_6
    if-eq v3, v8, :cond_7

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_14

    .line 256
    :cond_7
    array-length v4, v5

    if-lt v6, v4, :cond_13

    .line 257
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v4

    move-object v5, v4

    move v4, v9

    .line 260
    :goto_7
    add-int/lit8 v6, v4, 0x1

    aput-char v3, v5, v4

    .line 262
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B:I

    if-ge v3, v4, :cond_10

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    aget-char v3, v3, v4

    :goto_8
    move v4, v3

    move v3, v9

    move v13, v6

    move-object v6, v5

    move v5, v13

    .line 267
    :goto_9
    if-gt v4, v12, :cond_12

    if-lt v4, v11, :cond_12

    .line 268
    add-int/lit8 v3, v3, 0x1

    .line 269
    array-length v7, v6

    if-lt v5, v7, :cond_8

    .line 270
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v5

    move-object v6, v5

    move v5, v9

    .line 273
    :cond_8
    add-int/lit8 v7, v5, 0x1

    aput-char v4, v6, v5

    .line 274
    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B:I

    if-lt v5, v8, :cond_11

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a()Z

    move-result v5

    if-nez v5, :cond_11

    move v1, v3

    move v5, v7

    move v3, v10

    .line 281
    :goto_a
    if-nez v1, :cond_9

    .line 282
    const-string v6, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v4, v6}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->c(ILjava/lang/String;)V

    :cond_9
    move v4, v5

    .line 287
    :goto_b
    if-nez v3, :cond_a

    .line 288
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    sub-int/2addr v3, v10

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    .line 290
    :cond_a
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 292
    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0

    .line 188
    :cond_b
    const-string v2, "No digit following minus sign"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d(Ljava/lang/String;)C

    move-result v2

    goto/16 :goto_1

    .line 209
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    aget-char v0, v0, v2

    move v2, v4

    goto/16 :goto_2

    .line 227
    :cond_d
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    aget-char v3, v3, v6

    .line 228
    if-lt v3, v11, :cond_3

    if-gt v3, v12, :cond_3

    .line 231
    add-int/lit8 v1, v1, 0x1

    .line 232
    array-length v6, v5

    if-lt v4, v6, :cond_e

    .line 233
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v4

    move-object v5, v4

    move v4, v9

    .line 236
    :cond_e
    add-int/lit8 v6, v4, 0x1

    aput-char v3, v5, v4

    move v4, v6

    goto/16 :goto_4

    .line 252
    :cond_f
    const-string v3, "expected a digit for number exponent"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d(Ljava/lang/String;)C

    move-result v3

    goto/16 :goto_6

    .line 262
    :cond_10
    const-string v3, "expected a digit for number exponent"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d(Ljava/lang/String;)C

    move-result v3

    goto/16 :goto_8

    .line 278
    :cond_11
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    aget-char v4, v4, v5

    move v5, v7

    goto/16 :goto_9

    :cond_12
    move v13, v3

    move v3, v1

    move v1, v13

    goto :goto_a

    :cond_13
    move v4, v6

    goto/16 :goto_7

    :cond_14
    move v4, v3

    move v3, v9

    move v13, v6

    move-object v6, v5

    move v5, v13

    goto/16 :goto_9

    :cond_15
    move v3, v1

    move v1, v9

    goto :goto_b

    :cond_16
    move-object v5, v4

    move v4, v3

    move v3, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_5

    :cond_17
    move-object v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_3

    :cond_18
    move v1, v9

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(IZ)Lorg/codehaus/jackson/JsonToken;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v5, 0x7ff0000000000000L

    const-wide/high16 v3, -0x10000000000000L

    .line 338
    const/16 v0, 0x49

    if-ne p1, v0, :cond_9

    .line 339
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B:I

    if-lt v0, v1, :cond_0

    .line 340
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->i()V

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    aget-char v0, v0, v1

    .line 345
    const/16 v1, 0x4e

    if-ne v0, v1, :cond_5

    .line 346
    if-eqz p2, :cond_1

    const-string v1, "-INF"

    .line 347
    :goto_0
    invoke-virtual {p0, v1, v7}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 348
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    if-eqz p2, :cond_2

    move-wide v2, v3

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 364
    :goto_2
    return-object v0

    .line 346
    :cond_1
    const-string v1, "+INF"

    goto :goto_0

    :cond_2
    move-wide v2, v5

    .line 349
    goto :goto_1

    .line 351
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

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b(Ljava/lang/String;)V

    .line 363
    :cond_4
    :goto_3
    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->c(ILjava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    goto :goto_2

    .line 353
    :cond_5
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_4

    .line 354
    if-eqz p2, :cond_6

    const-string v1, "-Infinity"

    .line 355
    :goto_4
    invoke-virtual {p0, v1, v7}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 356
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 357
    if-eqz p2, :cond_7

    move-wide v2, v3

    :goto_5
    invoke-virtual {p0, v1, v2, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 354
    :cond_6
    const-string v1, "+Infinity"

    goto :goto_4

    :cond_7
    move-wide v2, v5

    .line 357
    goto :goto_5

    .line 359
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

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move v0, p1

    goto :goto_3
.end method

.method protected final c(I)Lorg/codehaus/jackson/JsonToken;
    .locals 12

    .prologue
    const/16 v11, 0x2d

    const/4 v8, 0x0

    const/16 v10, 0x39

    const/4 v6, 0x1

    const/16 v9, 0x30

    .line 60
    if-ne p1, v11, :cond_1

    move v0, v6

    .line 61
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    .line 62
    sub-int v2, v1, v6

    .line 63
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B:I

    .line 67
    if-eqz v0, :cond_12

    .line 68
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B:I

    if-lt v1, v4, :cond_2

    .line 164
    :cond_0
    if-eqz v0, :cond_e

    add-int/lit8 v1, v2, 0x1

    :goto_1
    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    .line 165
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Z)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    move v0, v8

    .line 60
    goto :goto_0

    .line 71
    :cond_2
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    add-int/lit8 v5, v1, 0x1

    aget-char v1, v4, v1

    .line 73
    if-gt v1, v10, :cond_3

    if-ge v1, v9, :cond_4

    .line 74
    :cond_3
    iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    .line 75
    invoke-virtual {p0, v1, v6}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_4
    move v4, v1

    move v1, v5

    .line 83
    :goto_3
    if-eq v4, v9, :cond_0

    move v4, v1

    move v1, v6

    .line 99
    :goto_4
    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B:I

    if-ge v4, v5, :cond_0

    .line 102
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    add-int/lit8 v6, v4, 0x1

    aget-char v4, v5, v4

    .line 103
    if-lt v4, v9, :cond_5

    if-le v4, v10, :cond_a

    .line 112
    :cond_5
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_11

    move v4, v8

    move v5, v6

    .line 115
    :goto_5
    if-ge v5, v3, :cond_0

    .line 118
    iget-object v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    add-int/lit8 v7, v5, 0x1

    aget-char v5, v6, v5

    .line 119
    if-lt v5, v9, :cond_6

    if-le v5, v10, :cond_b

    .line 125
    :cond_6
    if-nez v4, :cond_7

    .line 126
    const-string v6, "Decimal point not followed by a digit"

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->c(ILjava/lang/String;)V

    :cond_7
    move v6, v5

    move v5, v7

    .line 131
    :goto_6
    const/16 v7, 0x65

    if-eq v6, v7, :cond_8

    const/16 v7, 0x45

    if-ne v6, v7, :cond_10

    .line 132
    :cond_8
    if-ge v5, v3, :cond_0

    .line 136
    iget-object v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    add-int/lit8 v7, v5, 0x1

    aget-char v5, v6, v5

    .line 137
    if-eq v5, v11, :cond_9

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_f

    .line 138
    :cond_9
    if-ge v7, v3, :cond_0

    .line 141
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    add-int/lit8 v6, v7, 0x1

    aget-char v5, v5, v7

    move v7, v5

    move v5, v8

    .line 143
    :goto_7
    if-gt v7, v10, :cond_c

    if-lt v7, v9, :cond_c

    .line 144
    add-int/lit8 v5, v5, 0x1

    .line 145
    if-ge v6, v3, :cond_0

    .line 148
    iget-object v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    add-int/lit8 v8, v6, 0x1

    aget-char v6, v7, v6

    move v7, v6

    move v6, v8

    goto :goto_7

    .line 106
    :cond_a
    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_4

    .line 122
    :cond_b
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_5

    .line 151
    :cond_c
    if-nez v5, :cond_d

    .line 152
    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v7, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->c(ILjava/lang/String;)V

    :cond_d
    move v3, v5

    move v5, v6

    .line 157
    :goto_8
    add-int/lit8 v5, v5, -0x1

    .line 158
    iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->A:I

    .line 159
    sub-int/2addr v5, v2

    .line 160
    iget-object v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->K:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b:[C

    invoke-virtual {v6, v7, v2, v5}, Lorg/codehaus/jackson/util/TextBuffer;->a([CII)V

    .line 161
    invoke-virtual {p0, v0, v1, v4, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    move v1, v2

    .line 164
    goto/16 :goto_1

    :cond_f
    move v6, v7

    move v7, v5

    move v5, v8

    goto :goto_7

    :cond_10
    move v3, v8

    goto :goto_8

    :cond_11
    move v5, v6

    move v6, v4

    move v4, v8

    goto :goto_6

    :cond_12
    move v4, p1

    goto/16 :goto_3
.end method
