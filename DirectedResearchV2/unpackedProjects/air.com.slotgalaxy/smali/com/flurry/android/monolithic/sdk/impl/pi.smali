.class public abstract Lcom/flurry/android/monolithic/sdk/impl/pi;
.super Lcom/flurry/android/monolithic/sdk/impl/ow;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/ow;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;-><init>(I)V

    .line 62
    return-void
.end method

.method protected static final c(I)Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "\' (code "

    const-string v4, "\'"

    const-string v3, ")"

    .line 508
    int-to-char v0, p0

    .line 509
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CTRL-CHAR, code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    :goto_0
    return-object v0

    .line 512
    :cond_0
    const/16 v1, 0xff

    if-le p0, v1, :cond_1

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 515
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract H()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation
.end method

.method protected R()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 425
    const-string v0, "Unexpected end-of-String in base64 content"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ov;

    move-result-object v0

    throw v0
.end method

.method protected S()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/pi;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->c(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method protected T()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 459
    const-string v0, " in a value"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->c(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method protected final U()V
    .locals 2

    .prologue
    .line 532
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: this code path should never get executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(C)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 489
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ox;->f:Lcom/flurry/android/monolithic/sdk/impl/ox;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->a(Lcom/flurry/android/monolithic/sdk/impl/ox;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    .line 497
    :goto_0
    return v0

    .line 493
    :cond_0
    const/16 v0, 0x27

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ox;->d:Lcom/flurry/android/monolithic/sdk/impl/ox;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->a(Lcom/flurry/android/monolithic/sdk/impl/ox;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p1

    .line 494
    goto :goto_0

    .line 496
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized character escape "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/pi;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->d(Ljava/lang/String;)V

    move v0, p1

    .line 497
    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/on;CILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    const-string v2, ") in base64 content"

    .line 408
    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    .line 409
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

    .line 418
    :goto_0
    if-eqz p4, :cond_0

    .line 419
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

    .line 421
    :cond_0
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ov;

    move-result-object v0

    throw v0

    .line 410
    :cond_1
    invoke-virtual {p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/on;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected padding character (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/on;->b()C

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

    .line 412
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 414
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

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 416
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afq;Lcom/flurry/android/monolithic/sdk/impl/on;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 313
    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v8

    .line 317
    :goto_0
    if-ge v1, v0, :cond_0

    .line 321
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 322
    if-lt v2, v0, :cond_1

    .line 398
    :cond_0
    :goto_2
    return-void

    .line 325
    :cond_1
    const/16 v3, 0x20

    if-le v1, v3, :cond_f

    .line 326
    invoke-virtual {p3, v1}, Lcom/flurry/android/monolithic/sdk/impl/on;->b(C)I

    move-result v3

    .line 327
    if-gez v3, :cond_2

    .line 328
    invoke-virtual {p0, p3, v1, v8, v6}, Lcom/flurry/android/monolithic/sdk/impl/pi;->a(Lcom/flurry/android/monolithic/sdk/impl/on;CILjava/lang/String;)V

    .line 332
    :cond_2
    if-lt v2, v0, :cond_3

    .line 333
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->R()V

    .line 335
    :cond_3
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 336
    invoke-virtual {p3, v2}, Lcom/flurry/android/monolithic/sdk/impl/on;->b(C)I

    move-result v4

    .line 337
    if-gez v4, :cond_4

    .line 338
    const/4 v5, 0x1

    invoke-virtual {p0, p3, v2, v5, v6}, Lcom/flurry/android/monolithic/sdk/impl/pi;->a(Lcom/flurry/android/monolithic/sdk/impl/on;CILjava/lang/String;)V

    .line 340
    :cond_4
    shl-int/lit8 v2, v3, 0x6

    or-int/2addr v2, v4

    .line 342
    if-lt v1, v0, :cond_6

    .line 344
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/on;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 345
    shr-int/lit8 v0, v2, 0x4

    .line 346
    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/afq;->a(I)V

    goto :goto_2

    .line 349
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->R()V

    .line 351
    :cond_6
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 352
    invoke-virtual {p3, v1}, Lcom/flurry/android/monolithic/sdk/impl/on;->b(C)I

    move-result v4

    .line 355
    if-gez v4, :cond_a

    .line 356
    if-eq v4, v7, :cond_7

    .line 357
    const/4 v4, 0x2

    invoke-virtual {p0, p3, v1, v4, v6}, Lcom/flurry/android/monolithic/sdk/impl/pi;->a(Lcom/flurry/android/monolithic/sdk/impl/on;CILjava/lang/String;)V

    .line 360
    :cond_7
    if-lt v3, v0, :cond_8

    .line 361
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->R()V

    .line 363
    :cond_8
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 364
    invoke-virtual {p3, v3}, Lcom/flurry/android/monolithic/sdk/impl/on;->a(C)Z

    move-result v4

    if-nez v4, :cond_9

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected padding character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/on;->b()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p3, v3, v9, v4}, Lcom/flurry/android/monolithic/sdk/impl/pi;->a(Lcom/flurry/android/monolithic/sdk/impl/on;CILjava/lang/String;)V

    .line 368
    :cond_9
    shr-int/lit8 v2, v2, 0x4

    .line 369
    invoke-virtual {p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/afq;->a(I)V

    goto/16 :goto_0

    .line 373
    :cond_a
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v4

    .line 375
    if-lt v3, v0, :cond_c

    .line 377
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/on;->a()Z

    move-result v2

    if-nez v2, :cond_b

    .line 378
    shr-int/lit8 v0, v1, 0x2

    .line 379
    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/afq;->b(I)V

    goto/16 :goto_2

    .line 382
    :cond_b
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->R()V

    .line 384
    :cond_c
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 385
    invoke-virtual {p3, v3}, Lcom/flurry/android/monolithic/sdk/impl/on;->b(C)I

    move-result v4

    .line 386
    if-gez v4, :cond_e

    .line 387
    if-eq v4, v7, :cond_d

    .line 388
    invoke-virtual {p0, p3, v3, v9, v6}, Lcom/flurry/android/monolithic/sdk/impl/pi;->a(Lcom/flurry/android/monolithic/sdk/impl/on;CILjava/lang/String;)V

    .line 390
    :cond_d
    shr-int/lit8 v1, v1, 0x2

    .line 391
    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/afq;->b(I)V

    :goto_3
    move v1, v2

    .line 397
    goto/16 :goto_0

    .line 394
    :cond_e
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    .line 395
    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/afq;->c(I)V

    goto :goto_3

    :cond_f
    move v1, v2

    goto/16 :goto_1
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/pi;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/ov;

    move-result-object v0

    throw v0
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/ov;
    .locals 2

    .prologue
    .line 537
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ov;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->i()Lcom/flurry/android/monolithic/sdk/impl/ot;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ov;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public abstract b()Lcom/flurry/android/monolithic/sdk/impl/pb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation
.end method

.method protected b(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 465
    int-to-char v0, p1

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->d(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method protected b(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/pi;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    if-eqz p2, :cond_0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    :cond_0
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->d(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method protected c(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 479
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ox;->e:Lcom/flurry/android/monolithic/sdk/impl/ox;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->a(Lcom/flurry/android/monolithic/sdk/impl/ox;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    .line 480
    :cond_0
    int-to-char v0, p1

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal unquoted character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): has to be escaped using backslash to be included in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->d(Ljava/lang/String;)V

    .line 484
    :cond_1
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->d(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public d()Lcom/flurry/android/monolithic/sdk/impl/ow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pi;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pi;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->d:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_0

    move-object v0, p0

    .line 118
    :goto_0
    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x1

    .line 101
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    .line 102
    if-nez v1, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pi;->H()V

    move-object v0, p0

    .line 108
    goto :goto_0

    .line 110
    :cond_2
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pj;->a:[I

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 113
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 114
    goto :goto_1

    .line 117
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    move-object v0, p0

    .line 118
    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/pi;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ov;

    move-result-object v0

    throw v0
.end method

.method public abstract k()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation
.end method
