.class public Lorg/apache/log4j/helpers/ISO8601DateFormat;
.super Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;
.source "ISO8601DateFormat.java"


# static fields
.field private static lastTime:J = 0x0L

.field private static lastTimeString:[C = null

.field private static final serialVersionUID:J = -0xa8b7f21cd667ee0L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x14

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>(Ljava/util/TimeZone;)V

    .line 52
    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 19
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 68
    .local v10, "now":J
    const-wide/16 v15, 0x3e8

    rem-long v15, v10, v15

    long-to-int v7, v15

    .line 70
    .local v7, "millis":I
    int-to-long v15, v7

    sub-long v15, v10, v15

    sget-wide v17, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTime:J

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    .line 79
    .local v13, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 80
    .local v14, "year":I
    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    move-object v15, v0

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 96
    const-string v9, "-NA-"

    .line 98
    .local v9, "month":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    move-object v15, v0

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 101
    .local v5, "day":I
    const/16 v15, 0xa

    if-ge v5, v15, :cond_0

    .line 102
    const/16 v15, 0x30

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    :cond_0
    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 105
    const/16 v15, 0x20

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    move-object v15, v0

    const/16 v16, 0xb

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 108
    .local v6, "hour":I
    const/16 v15, 0xa

    if-ge v6, v15, :cond_1

    .line 109
    const/16 v15, 0x30

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    :cond_1
    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 112
    const/16 v15, 0x3a

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    move-object v15, v0

    const/16 v16, 0xc

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 115
    .local v8, "mins":I
    const/16 v15, 0xa

    if-ge v8, v15, :cond_2

    .line 116
    const/16 v15, 0x30

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    :cond_2
    move-object/from16 v0, p2

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 119
    const/16 v15, 0x3a

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    move-object v15, v0

    const/16 v16, 0xd

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 122
    .local v12, "secs":I
    const/16 v15, 0xa

    if-ge v12, v15, :cond_3

    .line 123
    const/16 v15, 0x30

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    :cond_3
    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 127
    const/16 v15, 0x2c

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    sget-object v16, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move v1, v13

    move v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 131
    int-to-long v15, v7

    sub-long v15, v10, v15

    sput-wide v15, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTime:J

    .line 138
    .end local v5    # "day":I
    .end local v6    # "hour":I
    .end local v8    # "mins":I
    .end local v9    # "month":Ljava/lang/String;
    .end local v12    # "secs":I
    .end local v13    # "start":I
    .end local v14    # "year":I
    :goto_1
    const/16 v15, 0x64

    if-ge v7, v15, :cond_4

    .line 139
    const/16 v15, 0x30

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    :cond_4
    const/16 v15, 0xa

    if-ge v7, v15, :cond_5

    .line 141
    const/16 v15, 0x30

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    :cond_5
    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 144
    return-object p2

    .line 84
    .restart local v13    # "start":I
    .restart local v14    # "year":I
    :pswitch_0
    const-string v9, "-01-"

    .restart local v9    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 85
    .end local v9    # "month":Ljava/lang/String;
    :pswitch_1
    const-string v9, "-02-"

    .restart local v9    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 86
    .end local v9    # "month":Ljava/lang/String;
    :pswitch_2
    const-string v9, "-03-"

    .restart local v9    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 87
    .end local v9    # "month":Ljava/lang/String;
    :pswitch_3
    const-string v9, "-04-"

    .restart local v9    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 88
    .end local v9    # "month":Ljava/lang/String;
    :pswitch_4
    const-string v9, "-05-"

    .restart local v9    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 89
    .end local v9    # "month":Ljava/lang/String;
    :pswitch_5
    const-string v9, "-06-"

    .restart local v9    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 90
    .end local v9    # "month":Ljava/lang/String;
    :pswitch_6
    const-string v9, "-07-"

    .restart local v9    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 91
    .end local v9    # "month":Ljava/lang/String;
    :pswitch_7
    const-string v9, "-08-"

    .restart local v9    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 92
    .end local v9    # "month":Ljava/lang/String;
    :pswitch_8
    const-string v9, "-09-"

    .restart local v9    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 93
    .end local v9    # "month":Ljava/lang/String;
    :pswitch_9
    const-string v9, "-10-"

    .restart local v9    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 94
    .end local v9    # "month":Ljava/lang/String;
    :pswitch_a
    const-string v9, "-11-"

    .restart local v9    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 95
    .end local v9    # "month":Ljava/lang/String;
    :pswitch_b
    const-string v9, "-12-"

    .restart local v9    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 134
    .end local v9    # "month":Ljava/lang/String;
    .end local v13    # "start":I
    .end local v14    # "year":I
    :cond_6
    sget-object v15, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method
