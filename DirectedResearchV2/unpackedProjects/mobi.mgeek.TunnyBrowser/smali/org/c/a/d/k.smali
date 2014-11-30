.class public Lorg/c/a/d/k;
.super Ljava/util/StringTokenizer;
.source "QuotedStringTokenizer.java"


# static fields
.field private static final k:[C


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/StringBuffer;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 324
    const/16 v0, 0x20

    new-array v0, v0, [C

    sput-object v0, Lorg/c/a/d/k;->k:[C

    .line 327
    sget-object v0, Lorg/c/a/d/k;->k:[C

    const v1, 0xffff

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 328
    sget-object v0, Lorg/c/a/d/k;->k:[C

    const/16 v1, 0x8

    const/16 v2, 0x62

    aput-char v2, v0, v1

    .line 329
    sget-object v0, Lorg/c/a/d/k;->k:[C

    const/16 v1, 0x9

    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 330
    sget-object v0, Lorg/c/a/d/k;->k:[C

    const/16 v1, 0xa

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    .line 331
    sget-object v0, Lorg/c/a/d/k;->k:[C

    const/16 v1, 0xc

    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 332
    sget-object v0, Lorg/c/a/d/k;->k:[C

    const/16 v1, 0xd

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 333
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v0, "\t\n\r"

    iput-object v0, p0, Lorg/c/a/d/k;->b:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lorg/c/a/d/k;->c:Z

    .line 45
    iput-boolean v1, p0, Lorg/c/a/d/k;->d:Z

    .line 47
    iput-boolean v1, p0, Lorg/c/a/d/k;->f:Z

    .line 48
    iput v1, p0, Lorg/c/a/d/k;->g:I

    .line 49
    iput v1, p0, Lorg/c/a/d/k;->h:I

    .line 50
    iput-boolean v2, p0, Lorg/c/a/d/k;->i:Z

    .line 51
    iput-boolean v2, p0, Lorg/c/a/d/k;->j:Z

    .line 60
    iput-object p1, p0, Lorg/c/a/d/k;->a:Ljava/lang/String;

    .line 61
    if-eqz p2, :cond_0

    .line 62
    iput-object p2, p0, Lorg/c/a/d/k;->b:Ljava/lang/String;

    .line 63
    :cond_0
    iput-boolean p3, p0, Lorg/c/a/d/k;->d:Z

    .line 64
    iput-boolean p4, p0, Lorg/c/a/d/k;->c:Z

    .line 66
    iget-object v0, p0, Lorg/c/a/d/k;->b:Ljava/lang/String;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/c/a/d/k;->b:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t use quotes as delimiters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/d/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/c/a/d/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_3

    const/16 v0, 0x200

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    .line 71
    return-void

    .line 70
    :cond_3
    iget-object v0, p0, Lorg/c/a/d/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/c/a/d/k;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 283
    if-nez p0, :cond_1

    .line 284
    const/4 p0, 0x0

    .line 300
    :cond_0
    :goto_0
    return-object p0

    .line 285
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 286
    const-string p0, "\"\""

    goto :goto_0

    .line 289
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 292
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3

    const/16 v2, 0x27

    if-eq v1, v2, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 294
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 295
    invoke-static {v0, p0}, Lorg/c/a/d/k;->a(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 289
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x22

    const/4 v1, 0x1

    const/16 v6, 0x5c

    const/4 v3, 0x0

    .line 479
    if-nez p0, :cond_1

    .line 480
    const/4 p0, 0x0

    .line 551
    :cond_0
    :goto_0
    return-object p0

    .line 481
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 484
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 485
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 486
    if-ne v0, v2, :cond_0

    if-eq v0, v7, :cond_2

    const/16 v2, 0x27

    if-ne v0, v2, :cond_0

    .line 489
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    move v2, v3

    .line 491
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_6

    .line 493
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 495
    if-eqz v2, :cond_4

    .line 498
    sparse-switch v5, :sswitch_data_0

    .line 534
    if-eqz p1, :cond_3

    invoke-static {v5}, Lorg/c/a/d/k;->a(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 536
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 491
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 501
    :sswitch_0
    const/16 v2, 0xa

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 502
    goto :goto_2

    .line 504
    :sswitch_1
    const/16 v2, 0xd

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 505
    goto :goto_2

    .line 507
    :sswitch_2
    const/16 v2, 0x9

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 508
    goto :goto_2

    .line 510
    :sswitch_3
    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 511
    goto :goto_2

    .line 513
    :sswitch_4
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 514
    goto :goto_2

    .line 516
    :sswitch_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 517
    goto :goto_2

    .line 519
    :sswitch_6
    const/16 v2, 0x2f

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 520
    goto :goto_2

    .line 522
    :sswitch_7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 523
    goto :goto_2

    .line 525
    :sswitch_8
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lorg/c/a/d/q;->a(B)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/c/a/d/q;->a(B)B

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Lorg/c/a/d/q;->a(B)B

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v0

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/c/a/d/q;->a(B)B

    move-result v2

    add-int/2addr v2, v5

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 532
    goto :goto_2

    .line 541
    :cond_4
    if-ne v5, v6, :cond_5

    move v2, v1

    .line 543
    goto :goto_2

    .line 547
    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 551
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 498
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x2f -> :sswitch_6
        0x5c -> :sswitch_5
        0x62 -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_0
        0x72 -> :sswitch_1
        0x74 -> :sswitch_2
        0x75 -> :sswitch_8
    .end sparse-switch
.end method

.method public static a(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x22

    const/16 v4, 0x5c

    .line 345
    const/16 v0, 0x22

    :try_start_0
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 346
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 349
    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    .line 351
    if-eq v1, v5, :cond_0

    if-ne v1, v4, :cond_1

    .line 352
    :cond_0
    const/16 v2, 0x5c

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 353
    :cond_1
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 346
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_2
    sget-object v2, Lorg/c/a/d/k;->k:[C

    aget-char v2, v2, v1

    .line 358
    const v3, 0xffff

    if-ne v2, v3, :cond_4

    .line 361
    const/16 v2, 0x5c

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v2

    const/16 v3, 0x75

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v2

    const/16 v3, 0x30

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v2

    const/16 v3, 0x30

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 362
    if-ge v1, v6, :cond_3

    .line 363
    const/16 v2, 0x30

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 364
    :cond_3
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 374
    :catch_0
    move-exception v0

    .line 376
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 368
    :cond_4
    const/16 v1, 0x5c

    :try_start_1
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 372
    :cond_5
    const/16 v0, 0x22

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    return-void
.end method

.method private static a(C)Z
    .locals 1

    .prologue
    .line 563
    const/16 v0, 0x6e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x72

    if-eq p0, v0, :cond_0

    const/16 v0, 0x74

    if-eq p0, v0, :cond_0

    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    const/16 v0, 0x62

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x75

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 601
    iput-boolean p1, p0, Lorg/c/a/d/k;->j:Z

    .line 602
    return-void
.end method

.method public countTokens()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, -0x1

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/c/a/d/k;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public hasMoreTokens()Z
    .locals 10

    .prologue
    const/4 v4, 0x2

    const/16 v9, 0x27

    const/16 v8, 0x22

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 99
    iget-boolean v0, p0, Lorg/c/a/d/k;->f:Z

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    return v3

    .line 102
    :cond_0
    iget v0, p0, Lorg/c/a/d/k;->g:I

    iput v0, p0, Lorg/c/a/d/k;->h:I

    move v0, v1

    move v2, v1

    .line 106
    :cond_1
    :goto_1
    iget v5, p0, Lorg/c/a/d/k;->g:I

    iget-object v6, p0, Lorg/c/a/d/k;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_17

    .line 108
    iget-object v5, p0, Lorg/c/a/d/k;->a:Ljava/lang/String;

    iget v6, p0, Lorg/c/a/d/k;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/c/a/d/k;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 110
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 113
    :pswitch_0
    iget-object v6, p0, Lorg/c/a/d/k;->b:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    .line 115
    iget-boolean v6, p0, Lorg/c/a/d/k;->d:Z

    if-eqz v6, :cond_1

    .line 117
    iget-object v0, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    iput-boolean v3, p0, Lorg/c/a/d/k;->f:Z

    goto :goto_0

    .line 121
    :cond_2
    if-ne v5, v9, :cond_4

    iget-boolean v2, p0, Lorg/c/a/d/k;->j:Z

    if-eqz v2, :cond_4

    .line 123
    iget-boolean v2, p0, Lorg/c/a/d/k;->c:Z

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    move v2, v4

    .line 125
    goto :goto_1

    .line 127
    :cond_4
    if-ne v5, v8, :cond_6

    iget-boolean v2, p0, Lorg/c/a/d/k;->i:Z

    if-eqz v2, :cond_6

    .line 129
    iget-boolean v2, p0, Lorg/c/a/d/k;->c:Z

    if-eqz v2, :cond_5

    .line 130
    iget-object v2, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    .line 135
    :cond_6
    iget-object v2, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    iput-boolean v3, p0, Lorg/c/a/d/k;->f:Z

    move v2, v3

    .line 139
    goto :goto_1

    .line 142
    :pswitch_1
    iput-boolean v3, p0, Lorg/c/a/d/k;->f:Z

    .line 143
    iget-object v6, p0, Lorg/c/a/d/k;->b:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_8

    .line 145
    iget-boolean v0, p0, Lorg/c/a/d/k;->d:Z

    if-eqz v0, :cond_7

    .line 146
    iget v0, p0, Lorg/c/a/d/k;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/d/k;->g:I

    .line 147
    :cond_7
    iget-boolean v3, p0, Lorg/c/a/d/k;->f:Z

    goto :goto_0

    .line 149
    :cond_8
    if-ne v5, v9, :cond_a

    iget-boolean v6, p0, Lorg/c/a/d/k;->j:Z

    if-eqz v6, :cond_a

    .line 151
    iget-boolean v2, p0, Lorg/c/a/d/k;->c:Z

    if-eqz v2, :cond_9

    .line 152
    iget-object v2, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    move v2, v4

    .line 153
    goto :goto_1

    .line 155
    :cond_a
    if-ne v5, v8, :cond_c

    iget-boolean v6, p0, Lorg/c/a/d/k;->i:Z

    if-eqz v6, :cond_c

    .line 157
    iget-boolean v2, p0, Lorg/c/a/d/k;->c:Z

    if-eqz v2, :cond_b

    .line 158
    iget-object v2, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    :cond_b
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 163
    :cond_c
    iget-object v6, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 168
    :pswitch_2
    iput-boolean v3, p0, Lorg/c/a/d/k;->f:Z

    .line 169
    if-eqz v0, :cond_d

    .line 172
    iget-object v0, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto/16 :goto_1

    .line 174
    :cond_d
    if-ne v5, v9, :cond_f

    .line 176
    iget-boolean v2, p0, Lorg/c/a/d/k;->c:Z

    if-eqz v2, :cond_e

    .line 177
    iget-object v2, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_e
    move v2, v3

    .line 178
    goto/16 :goto_1

    .line 180
    :cond_f
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_11

    .line 182
    iget-boolean v0, p0, Lorg/c/a/d/k;->c:Z

    if-eqz v0, :cond_10

    .line 183
    iget-object v0, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_10
    move v0, v3

    .line 184
    goto/16 :goto_1

    .line 188
    :cond_11
    iget-object v6, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 193
    :pswitch_3
    iput-boolean v3, p0, Lorg/c/a/d/k;->f:Z

    .line 194
    if-eqz v0, :cond_12

    .line 197
    iget-object v0, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto/16 :goto_1

    .line 199
    :cond_12
    if-ne v5, v8, :cond_14

    .line 201
    iget-boolean v2, p0, Lorg/c/a/d/k;->c:Z

    if-eqz v2, :cond_13

    .line 202
    iget-object v2, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_13
    move v2, v3

    .line 203
    goto/16 :goto_1

    .line 205
    :cond_14
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_16

    .line 207
    iget-boolean v0, p0, Lorg/c/a/d/k;->c:Z

    if-eqz v0, :cond_15

    .line 208
    iget-object v0, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_15
    move v0, v3

    .line 209
    goto/16 :goto_1

    .line 213
    :cond_16
    iget-object v6, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 219
    :cond_17
    iget-boolean v3, p0, Lorg/c/a/d/k;->f:Z

    goto/16 :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/c/a/d/k;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0}, Lorg/c/a/d/k;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 228
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 229
    :cond_1
    iget-object v0, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 231
    iput-boolean v2, p0, Lorg/c/a/d/k;->f:Z

    .line 232
    return-object v0
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    iput-object p1, p0, Lorg/c/a/d/k;->b:Ljava/lang/String;

    .line 241
    iget v0, p0, Lorg/c/a/d/k;->h:I

    iput v0, p0, Lorg/c/a/d/k;->g:I

    .line 242
    iget-object v0, p0, Lorg/c/a/d/k;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 243
    iput-boolean v1, p0, Lorg/c/a/d/k;->f:Z

    .line 244
    invoke-virtual {p0}, Lorg/c/a/d/k;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
