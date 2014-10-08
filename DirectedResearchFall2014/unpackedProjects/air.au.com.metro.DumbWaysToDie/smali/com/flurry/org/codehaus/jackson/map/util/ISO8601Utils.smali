.class public Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final GMT_ID:Ljava/lang/String; = "GMT"

.field private static final TIMEZONE_GMT:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)V
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 175
    .local v0, "found":C
    if-eq v0, p2, :cond_0

    .line 176
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' character but found \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 28
    const/4 v0, 0x0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-static {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z

    .prologue
    .line 39
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 13
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z
    .param p2, "tz"    # Ljava/util/TimeZone;

    .prologue
    const v10, 0xea60

    const/16 v9, 0x3a

    const/16 v8, 0x2d

    const-string v12, "mm"

    const-string v11, "hh"

    .line 51
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v6}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 52
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 55
    const-string v6, "yyyy-MM-ddThh:mm:ss"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 56
    .local v1, "capacity":I
    if-eqz p1, :cond_1

    const-string v6, ".sss"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_0
    add-int/2addr v1, v6

    .line 57
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Z"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_1
    add-int/2addr v1, v6

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .local v2, "formatted":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v7, "yyyy"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 61
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const-string v7, "MM"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 63
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v7, "dd"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 65
    const/16 v6, 0x54

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v7, "hh"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 67
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v7, "mm"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 69
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v7, "ss"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 71
    if-eqz p1, :cond_0

    .line 72
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    const/16 v6, 0xe

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v7, "sss"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v6, v7}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 76
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 77
    .local v5, "offset":I
    if-eqz v5, :cond_4

    .line 78
    div-int v6, v5, v10

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 79
    .local v3, "hours":I
    div-int v6, v5, v10

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 80
    .local v4, "minutes":I
    if-gez v5, :cond_3

    move v6, v8

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const-string v6, "hh"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v3, v6}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 82
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const-string v6, "mm"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v4, v6}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 88
    .end local v3    # "hours":I
    .end local v4    # "minutes":I
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 56
    .end local v2    # "formatted":Ljava/lang/StringBuilder;
    .end local v5    # "offset":I
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 57
    :cond_2
    const-string v6, "+hh:mm"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    goto/16 :goto_1

    .line 80
    .restart local v2    # "formatted":Ljava/lang/StringBuilder;
    .restart local v3    # "hours":I
    .restart local v4    # "minutes":I
    .restart local v5    # "offset":I
    :cond_3
    const/16 v6, 0x2b

    goto :goto_2

    .line 85
    .end local v3    # "hours":I
    .end local v4    # "minutes":I
    :cond_4
    const/16 v6, 0x5a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I
    .param p2, "length"    # I

    .prologue
    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "strValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, p2, v2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 225
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 11
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 104
    .local v0, "offset":I
    add-int/lit8 v1, v0, 0x4

    .end local v0    # "offset":I
    .local v1, "offset":I
    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v9

    .line 105
    .local v9, "year":I
    const/16 v0, 0x2d

    invoke-static {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    .line 108
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    add-int/lit8 v1, v0, 0x2

    .end local v0    # "offset":I
    .restart local v1    # "offset":I
    invoke-static {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v5

    .line 109
    .local v5, "month":I
    const/16 v0, 0x2d

    invoke-static {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 112
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    add-int/lit8 v2, v0, 0x2

    .end local v0    # "offset":I
    .local v2, "offset":I
    :try_start_1
    invoke-static {p0, v0, v2}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v1

    .line 113
    .local v1, "day":I
    const/16 v0, 0x54

    invoke-static {p0, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 116
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "offset":I
    .restart local v0    # "offset":I
    add-int/lit8 v3, v0, 0x2

    .end local v0    # "offset":I
    .local v3, "offset":I
    :try_start_2
    invoke-static {p0, v0, v3}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v2

    .line 117
    .local v2, "hour":I
    const/16 v0, 0x3a

    invoke-static {p0, v3, v0}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    .line 119
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "offset":I
    .restart local v0    # "offset":I
    add-int/lit8 v3, v0, 0x2

    .end local v0    # "offset":I
    .restart local v3    # "offset":I
    invoke-static {p0, v0, v3}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v4

    .line 120
    .local v4, "minutes":I
    const/16 v0, 0x3a

    invoke-static {p0, v3, v0}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    .line 122
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "offset":I
    .restart local v0    # "offset":I
    add-int/lit8 v3, v0, 0x2

    .end local v0    # "offset":I
    .restart local v3    # "offset":I
    invoke-static {p0, v0, v3}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    .line 124
    .local v7, "seconds":I
    const/4 v0, 0x0

    .line 125
    .local v0, "milliseconds":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2e

    if-ne v6, v8, :cond_4

    .line 126
    const/16 v0, 0x2e

    invoke-static {p0, v3, v0}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    .line 127
    .end local v0    # "milliseconds":I
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "offset":I
    .local v0, "offset":I
    add-int/lit8 v3, v0, 0x3

    .end local v0    # "offset":I
    .restart local v3    # "offset":I
    invoke-static {p0, v0, v3}, Lcom/flurry/org/codehaus/jackson/map/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v0

    .local v0, "milliseconds":I
    move v6, v3

    .end local v3    # "offset":I
    .local v6, "offset":I
    move v3, v0

    .line 132
    .end local v0    # "milliseconds":I
    .local v3, "milliseconds":I
    :goto_0
    :try_start_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 133
    .local v0, "timezoneIndicator":C
    const/16 v8, 0x2b

    if-eq v0, v8, :cond_0

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "timezoneIndicator":C
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GMT"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "timezoneId":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 141
    .local v8, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0    # "timezoneId":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 142
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5

    .line 156
    .end local v1    # "day":I
    .end local v2    # "hour":I
    .end local v3    # "milliseconds":I
    .end local v5    # "month":I
    .end local v8    # "timezone":Ljava/util/TimeZone;
    .end local v9    # "year":I
    :catch_0
    move-exception v0

    move v1, v6

    .line 157
    .end local v4    # "minutes":I
    .end local v6    # "offset":I
    .end local v7    # "seconds":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .local v1, "offset":I
    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1    # "offset":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "date":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 135
    .local v0, "timezoneIndicator":C
    .local v1, "day":I
    .restart local v2    # "hour":I
    .restart local v3    # "milliseconds":I
    .restart local v4    # "minutes":I
    .restart local v5    # "month":I
    .restart local v6    # "offset":I
    .restart local v7    # "seconds":I
    .restart local v9    # "year":I
    .restart local p0    # "date":Ljava/lang/String;
    :cond_1
    const/16 v8, 0x5a

    if-ne v0, v8, :cond_2

    .line 136
    :try_start_4
    const-string v0, "GMT"

    .local v0, "timezoneId":Ljava/lang/String;
    goto :goto_1

    .line 138
    .local v0, "timezoneIndicator":C
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .end local v1    # "day":I
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "hour":I
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid time zone indicator "

    .end local v3    # "milliseconds":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0    # "timezoneIndicator":C
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5

    .line 158
    .end local v5    # "month":I
    .end local v9    # "year":I
    :catch_1
    move-exception v0

    move v1, v6

    .line 159
    .end local v4    # "minutes":I
    .end local v6    # "offset":I
    .end local v7    # "seconds":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v1, "offset":I
    :goto_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1    # "offset":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "date":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 145
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v1, "day":I
    .restart local v2    # "hour":I
    .restart local v3    # "milliseconds":I
    .restart local v4    # "minutes":I
    .restart local v5    # "month":I
    .restart local v6    # "offset":I
    .restart local v7    # "seconds":I
    .restart local v8    # "timezone":Ljava/util/TimeZone;
    .restart local v9    # "year":I
    .restart local p0    # "date":Ljava/lang/String;
    :cond_3
    :try_start_5
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v8}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 146
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setLenient(Z)V

    .line 147
    .end local v8    # "timezone":Ljava/util/TimeZone;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 148
    const/4 v8, 0x2

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    invoke-virtual {v0, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 149
    .end local v5    # "month":I
    .end local v9    # "year":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 150
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 151
    .end local v1    # "day":I
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 152
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->set(II)V

    .line 153
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 155
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object p0

    .end local p0    # "date":Ljava/lang/String;
    return-object p0

    .line 160
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "hour":I
    .end local v3    # "milliseconds":I
    .end local v4    # "minutes":I
    .end local v6    # "offset":I
    .end local v7    # "seconds":I
    .local v1, "offset":I
    .restart local p0    # "date":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1    # "offset":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "date":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 160
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .local v2, "offset":I
    .restart local v5    # "month":I
    .restart local v9    # "year":I
    .restart local p0    # "date":Ljava/lang/String;
    :catch_3
    move-exception v0

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_4

    .local v1, "day":I
    .local v3, "offset":I
    :catch_4
    move-exception v0

    move v1, v3

    .end local v3    # "offset":I
    .local v1, "offset":I
    goto :goto_4

    .end local v1    # "offset":I
    .end local v5    # "month":I
    .end local v9    # "year":I
    .restart local v4    # "minutes":I
    .restart local v6    # "offset":I
    .restart local v7    # "seconds":I
    :catch_5
    move-exception v0

    move v1, v6

    .end local v6    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_4

    .line 158
    .end local v4    # "minutes":I
    .end local v7    # "seconds":I
    :catch_6
    move-exception v0

    goto :goto_3

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    .restart local v5    # "month":I
    .restart local v9    # "year":I
    :catch_7
    move-exception v0

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_3

    .local v1, "day":I
    .restart local v3    # "offset":I
    :catch_8
    move-exception v0

    move v1, v3

    .end local v3    # "offset":I
    .local v1, "offset":I
    goto :goto_3

    .line 156
    .end local v5    # "month":I
    .end local v9    # "year":I
    :catch_9
    move-exception v0

    goto/16 :goto_2

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    .restart local v5    # "month":I
    .restart local v9    # "year":I
    :catch_a
    move-exception v0

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto/16 :goto_2

    .local v1, "day":I
    .restart local v3    # "offset":I
    :catch_b
    move-exception v0

    move v1, v3

    .end local v3    # "offset":I
    .local v1, "offset":I
    goto/16 :goto_2

    .local v0, "milliseconds":I
    .local v1, "day":I
    .local v2, "hour":I
    .restart local v3    # "offset":I
    .restart local v4    # "minutes":I
    .restart local v7    # "seconds":I
    :cond_4
    move v6, v3

    .end local v3    # "offset":I
    .restart local v6    # "offset":I
    move v3, v0

    .end local v0    # "milliseconds":I
    .local v3, "milliseconds":I
    goto/16 :goto_0
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const-string v7, "Invalid number: "

    .line 190
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt p2, v4, :cond_0

    if-le p1, p2, :cond_1

    .line 191
    :cond_0
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_1
    move v1, p1

    .line 195
    .local v1, "i":I
    const/4 v3, 0x0

    .line 197
    .local v3, "result":I
    if-ge v1, p2, :cond_5

    .line 198
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 199
    .local v0, "digit":I
    if-gez v0, :cond_2

    .line 200
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    :cond_2
    neg-int v3, v0

    .line 204
    .end local v0    # "digit":I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 205
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 206
    .restart local v0    # "digit":I
    if-gez v0, :cond_3

    .line 207
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    :cond_3
    mul-int/lit8 v3, v3, 0xa

    .line 210
    sub-int/2addr v3, v0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 212
    .end local v0    # "digit":I
    :cond_4
    neg-int v4, v3

    return v4

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_5
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method
