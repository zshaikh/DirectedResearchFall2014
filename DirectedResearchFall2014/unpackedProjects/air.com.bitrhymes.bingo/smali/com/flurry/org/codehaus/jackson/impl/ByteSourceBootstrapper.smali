.class public final Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;
.super Ljava/lang/Object;
.source "ByteSourceBootstrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper$1;
    }
.end annotation


# static fields
.field static final UTF8_BOM_1:B = -0x11t

.field static final UTF8_BOM_2:B = -0x45t

.field static final UTF8_BOM_3:B = -0x41t


# instance fields
.field protected _bigEndian:Z

.field private final _bufferRecyclable:Z

.field protected _bytesPerChar:I

.field protected final _context:Lcom/flurry/org/codehaus/jackson/io/IOContext;

.field protected final _in:Ljava/io/InputStream;

.field protected final _inputBuffer:[B

.field private _inputEnd:I

.field protected _inputProcessed:I

.field private _inputPtr:I


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 76
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 86
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    .line 87
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 88
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->allocReadIOBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    .line 89
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 90
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputProcessed:I

    .line 91
    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;[BII)V
    .locals 2
    .param p1, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .param p2, "inputBuffer"    # [B
    .param p3, "inputStart"    # I
    .param p4, "inputLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 76
    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 96
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 98
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    .line 99
    iput p3, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 100
    add-int v0, p3, p4

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 102
    neg-int v0, p3

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputProcessed:I

    .line 103
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    .line 104
    return-void
.end method

.method private checkUTF16(I)Z
    .locals 3
    .param p1, "i16"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 463
    const v0, 0xff00

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 464
    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 472
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    move v0, v2

    .line 473
    :goto_1
    return v0

    .line 465
    :cond_0
    and-int/lit16 v0, p1, 0xff

    if-nez v0, :cond_1

    .line 466
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 468
    goto :goto_1
.end method

.method private checkUTF32(I)Z
    .locals 3
    .param p1, "quad"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 443
    shr-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    .line 444
    iput-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 457
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    move v0, v2

    .line 458
    :goto_1
    return v0

    .line 445
    :cond_0
    const v0, 0xffffff

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 446
    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_0

    .line 447
    :cond_1
    const v0, -0xff0001

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 448
    const-string v0, "3412"

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_2
    const v0, -0xff01

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 450
    const-string v0, "2143"

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 453
    goto :goto_1
.end method

.method private handleBOM(I)Z
    .locals 6
    .param p1, "quad"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 397
    sparse-switch p1, :sswitch_data_0

    .line 414
    :goto_0
    ushr-int/lit8 v0, p1, 0x10

    .line 415
    .local v0, "msw":I
    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 416
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 417
    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 418
    iput-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    move v1, v3

    .line 434
    .end local v0    # "msw":I
    :goto_1
    return v1

    .line 399
    :sswitch_0
    iput-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 400
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 401
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    move v1, v3

    .line 402
    goto :goto_1

    .line 404
    :sswitch_1
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 405
    iput v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 406
    iput-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    move v1, v3

    .line 407
    goto :goto_1

    .line 409
    :sswitch_2
    const-string v1, "2143"

    invoke-direct {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    .line 411
    :sswitch_3
    const-string v1, "3412"

    invoke-direct {p0, v1}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    .restart local v0    # "msw":I
    :cond_0
    const v1, 0xfffe

    if-ne v0, v1, :cond_1

    .line 422
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 423
    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 424
    iput-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    move v1, v3

    .line 425
    goto :goto_1

    .line 428
    :cond_1
    ushr-int/lit8 v1, p1, 0x8

    const v2, 0xefbbbf

    if-ne v1, v2, :cond_2

    .line 429
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 430
    iput v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 431
    iput-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    move v1, v3

    .line 432
    goto :goto_1

    :cond_2
    move v1, v4

    .line 434
    goto :goto_1

    .line 397
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1010000 -> :sswitch_3
        -0x20000 -> :sswitch_1
        0xfeff -> :sswitch_0
        0xfffe -> :sswitch_2
    .end sparse-switch
.end method

.method public static hasJSONFormat(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    .locals 9
    .param p0, "acc"    # Lcom/flurry/org/codehaus/jackson/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5b

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/16 v5, 0x22

    .line 260
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_0

    .line 261
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    .line 341
    :goto_0
    return-object v3

    .line 263
    :cond_0
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v0

    .line 265
    .local v0, "b":B
    const/16 v3, -0x11

    if-ne v0, v3, :cond_6

    .line 266
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_1

    .line 267
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 269
    :cond_1
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v3

    const/16 v4, -0x45

    if-eq v3, v4, :cond_2

    .line 270
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 272
    :cond_2
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_3

    .line 273
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 275
    :cond_3
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v3

    const/16 v4, -0x41

    if-eq v3, v4, :cond_4

    .line 276
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 278
    :cond_4
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_5

    .line 279
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 281
    :cond_5
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v0

    .line 284
    :cond_6
    invoke-static {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;B)I

    move-result v1

    .line 285
    .local v1, "ch":I
    if-gez v1, :cond_7

    .line 286
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 289
    :cond_7
    const/16 v3, 0x7b

    if-ne v1, v3, :cond_b

    .line 291
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;)I

    move-result v1

    .line 292
    if-gez v1, :cond_8

    .line 293
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 295
    :cond_8
    if-eq v1, v5, :cond_9

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_a

    .line 296
    :cond_9
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 299
    :cond_a
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 303
    :cond_b
    if-ne v1, v8, :cond_f

    .line 304
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;)I

    move-result v1

    .line 305
    if-gez v1, :cond_c

    .line 306
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 309
    :cond_c
    const/16 v3, 0x5d

    if-eq v1, v3, :cond_d

    if-ne v1, v8, :cond_e

    .line 310
    :cond_d
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 312
    :cond_e
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 315
    :cond_f
    sget-object v2, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->WEAK_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    .line 318
    .local v2, "strength":Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    if-ne v1, v5, :cond_10

    move-object v3, v2

    .line 319
    goto :goto_0

    .line 321
    :cond_10
    if-gt v1, v7, :cond_11

    if-lt v1, v6, :cond_11

    move-object v3, v2

    .line 322
    goto/16 :goto_0

    .line 324
    :cond_11
    const/16 v3, 0x2d

    if-ne v1, v3, :cond_14

    .line 325
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;)I

    move-result v1

    .line 326
    if-gez v1, :cond_12

    .line 327
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto/16 :goto_0

    .line 329
    :cond_12
    if-gt v1, v7, :cond_13

    if-lt v1, v6, :cond_13

    move-object v3, v2

    goto/16 :goto_0

    :cond_13
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto/16 :goto_0

    .line 332
    :cond_14
    const/16 v3, 0x6e

    if-ne v1, v3, :cond_15

    .line 333
    const-string v3, "ull"

    invoke-static {p0, v3, v2}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->tryMatch(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    move-result-object v3

    goto/16 :goto_0

    .line 335
    :cond_15
    const/16 v3, 0x74

    if-ne v1, v3, :cond_16

    .line 336
    const-string v3, "rue"

    invoke-static {p0, v3, v2}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->tryMatch(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    move-result-object v3

    goto/16 :goto_0

    .line 338
    :cond_16
    const/16 v3, 0x66

    if-ne v1, v3, :cond_17

    .line 339
    const-string v3, "alse"

    invoke-static {p0, v3, v2}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->tryMatch(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    move-result-object v3

    goto/16 :goto_0

    .line 341
    :cond_17
    sget-object v3, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto/16 :goto_0
.end method

.method private reportWeirdUCS4(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final skipSpace(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;)I
    .locals 1
    .param p0, "acc"    # Lcom/flurry/org/codehaus/jackson/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    const/4 v0, -0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v0

    invoke-static {p0, v0}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;B)I

    move-result v0

    goto :goto_0
.end method

.method private static final skipSpace(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;B)I
    .locals 2
    .param p0, "acc"    # Lcom/flurry/org/codehaus/jackson/format/InputAccessor;
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    :goto_0
    and-int/lit16 v0, p1, 0xff

    .line 370
    .local v0, "ch":I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    move v1, v0

    .line 374
    :goto_1
    return v1

    .line 373
    :cond_0
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v1

    if-nez v1, :cond_1

    .line 374
    const/4 v1, -0x1

    goto :goto_1

    .line 376
    :cond_1
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result p1

    .line 377
    and-int/lit16 v1, p1, 0xff

    .line 378
    goto :goto_0
.end method

.method private static final tryMatch(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/format/MatchStrength;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    .locals 4
    .param p0, "acc"    # Lcom/flurry/org/codehaus/jackson/format/InputAccessor;
    .param p1, "matchStr"    # Ljava/lang/String;
    .param p2, "fullMatchStrength"    # Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 348
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    sget-object v2, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    .line 355
    :goto_1
    return-object v2

    .line 351
    :cond_0
    invoke-interface {p0}, Lcom/flurry/org/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 352
    sget-object v2, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    goto :goto_1

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p2

    .line 355
    goto :goto_1
.end method


# virtual methods
.method public constructParser(ILcom/flurry/org/codehaus/jackson/ObjectCodec;Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 18
    .param p1, "features"    # I
    .param p2, "codec"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    .param p3, "rootByteSymbols"    # Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .param p4, "rootCharSymbols"    # Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->detectEncoding()Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    move-result-object v16

    .line 227
    .local v16, "enc":Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v15

    .line 228
    .local v15, "canonicalize":Z
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v17

    .line 229
    .local v17, "intern":Z
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    move-object/from16 v0, v16

    move-object v1, v3

    if-ne v0, v1, :cond_0

    .line 233
    if-eqz v15, :cond_0

    .line 234
    move-object/from16 v0, p3

    move v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->makeChild(ZZ)Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v8

    .line 235
    .local v8, "can":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    new-instance v3, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    move v11, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    move v12, v0

    move/from16 v5, p1

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v12}, Lcom/flurry/org/codehaus/jackson/impl/Utf8StreamParser;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lcom/flurry/org/codehaus/jackson/ObjectCodec;Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V

    .line 238
    .end local v8    # "can":Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    :goto_0
    return-object v3

    :cond_0
    new-instance v9, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    move-object v10, v0

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->constructReader()Ljava/io/Reader;

    move-result-object v12

    move-object/from16 v0, p4

    move v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeChild(ZZ)Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v14

    move/from16 v11, p1

    move-object/from16 v13, p2

    invoke-direct/range {v9 .. v14}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lcom/flurry/org/codehaus/jackson/ObjectCodec;Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    move-object v3, v9

    goto :goto_0
.end method

.method public constructReader()Ljava/io/Reader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->getEncoding()Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    move-result-object v7

    .line 192
    .local v7, "enc":Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper$1;->$SwitchMap$org$codehaus$jackson$JsonEncoding:[I

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 218
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Internal error"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :pswitch_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/io/UTF32Reader;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->getEncoding()Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->isBigEndian()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/io/UTF32Reader;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V

    move-object v1, v0

    .line 215
    :goto_0
    return-object v1

    .line 203
    :pswitch_1
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 205
    .local v2, "in":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 206
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    invoke-direct {v0, v1, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 215
    .end local v2    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    :goto_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_0
    iget v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    if-ge v1, v3, :cond_1

    .line 212
    new-instance v0, Lcom/flurry/org/codehaus/jackson/io/MergedStream;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/io/MergedStream;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v0    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_1
    move-object v0, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public detectEncoding()Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 129
    .local v1, "foundEncoding":Z
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x18

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int v3, v4, v5

    .line 135
    .local v3, "quad":I
    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->handleBOM(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const/4 v1, 0x1

    .line 161
    .end local v3    # "quad":I
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 162
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    .line 178
    .local v0, "enc":Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    :goto_1
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v4, v0}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->setEncoding(Lcom/flurry/org/codehaus/jackson/JsonEncoding;)V

    .line 179
    return-object v0

    .line 144
    .end local v0    # "enc":Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    .restart local v3    # "quad":I
    :cond_1
    invoke-direct {p0, v3}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF32(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    const/4 v1, 0x1

    goto :goto_0

    .line 146
    :cond_2
    ushr-int/lit8 v4, v3, 0x10

    invoke-direct {p0, v4}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF16(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const/4 v1, 0x1

    goto :goto_0

    .line 150
    .end local v3    # "quad":I
    :cond_3
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .line 153
    .local v2, "i16":I
    invoke-direct {p0, v2}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF16(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const/4 v1, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "i16":I
    :cond_4
    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    packed-switch v4, :pswitch_data_0

    .line 175
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Internal error"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    :pswitch_1
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    .line 167
    .restart local v0    # "enc":Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    goto :goto_1

    .line 169
    .end local v0    # "enc":Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    :pswitch_2
    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF16_BE:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    move-object v0, v4

    .line 170
    .restart local v0    # "enc":Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    :goto_2
    goto :goto_1

    .line 169
    .end local v0    # "enc":Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    :cond_5
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF16_LE:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    move-object v0, v4

    goto :goto_2

    .line 172
    :pswitch_3
    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF32_BE:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    move-object v0, v4

    .line 173
    .restart local v0    # "enc":Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    :goto_3
    goto :goto_1

    .line 172
    .end local v0    # "enc":Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    :cond_6
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF32_LE:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    move-object v0, v4

    goto :goto_3

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected ensureLoaded(I)Z
    .locals 8
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 500
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    sub-int v1, v2, v3

    .line 501
    .local v1, "gotten":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 504
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v2, :cond_0

    .line 505
    const/4 v0, -0x1

    .line 509
    .local v0, "count":I
    :goto_1
    if-ge v0, v7, :cond_1

    .line 510
    const/4 v2, 0x0

    .line 515
    .end local v0    # "count":I
    :goto_2
    return v2

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    array-length v5, v5

    iget v6, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_1

    .line 512
    :cond_1
    iget v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 513
    add-int/2addr v1, v0

    .line 514
    goto :goto_0

    .end local v0    # "count":I
    :cond_2
    move v2, v7

    .line 515
    goto :goto_2
.end method
