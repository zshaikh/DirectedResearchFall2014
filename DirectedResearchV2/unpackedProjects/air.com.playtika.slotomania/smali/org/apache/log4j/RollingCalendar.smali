.class Lorg/apache/log4j/RollingCalendar;
.super Ljava/util/GregorianCalendar;
.source "DailyRollingFileAppender.java"


# static fields
.field private static final serialVersionUID:J = -0x3168d6e1c54238a1L


# instance fields
.field type:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 371
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    .line 375
    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 371
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    .line 379
    return-void
.end method


# virtual methods
.method public getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 8
    .param p1, "now"    # Ljava/util/Date;

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 390
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 392
    iget v1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    packed-switch v1, :pswitch_data_0

    .line 440
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown periodicity type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :pswitch_0
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 395
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 396
    invoke-virtual {p0, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V

    .line 442
    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 399
    :pswitch_1
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 400
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 401
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 402
    invoke-virtual {p0, v6, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    .line 405
    :pswitch_2
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 406
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 407
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 408
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 409
    .local v0, "hour":I
    if-ge v0, v4, :cond_0

    .line 410
    invoke-virtual {p0, v6, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 413
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    .line 417
    .end local v0    # "hour":I
    :pswitch_3
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 418
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 419
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 420
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 421
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    .line 424
    :pswitch_4
    const/4 v1, 0x7

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 425
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 426
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 427
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 428
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 429
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    .line 432
    :pswitch_5
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 433
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 434
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 435
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 436
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 437
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getNextCheckMillis(Ljava/util/Date;)J
    .locals 2
    .param p1, "now"    # Ljava/util/Date;

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lorg/apache/log4j/RollingCalendar;->getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 382
    iput p1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    .line 383
    return-void
.end method
