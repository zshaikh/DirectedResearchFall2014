.class public abstract Lorg/apache/log4j/helpers/DateLayout;
.super Lorg/apache/log4j/Layout;
.source "DateLayout.java"


# static fields
.field public static final DATE_FORMAT_OPTION:Ljava/lang/String; = "DateFormat"

.field public static final NULL_DATE_FORMAT:Ljava/lang/String; = "NULL"

.field public static final RELATIVE_TIME_DATE_FORMAT:Ljava/lang/String; = "RELATIVE"

.field public static final TIMEZONE_OPTION:Ljava/lang/String; = "TimeZone"


# instance fields
.field protected date:Ljava/util/Date;

.field protected dateFormat:Ljava/text/DateFormat;

.field private dateFormatOption:Ljava/lang/String;

.field protected pos:Ljava/text/FieldPosition;

.field private timeZoneID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/log4j/Layout;-><init>()V

    .line 55
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->pos:Ljava/text/FieldPosition;

    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->date:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormatOption:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/helpers/DateLayout;->setDateFormat(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->timeZoneID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lorg/apache/log4j/helpers/DateLayout;->timeZoneID:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 144
    :cond_0
    return-void
.end method

.method public dateFormat(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 3
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->date:Ljava/util/Date;

    iget-wide v1, p2, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 150
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lorg/apache/log4j/helpers/DateLayout;->date:Ljava/util/Date;

    iget-object v2, p0, Lorg/apache/log4j/helpers/DateLayout;->pos:Ljava/text/FieldPosition;

    invoke-virtual {v0, v1, p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 151
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    :cond_0
    return-void
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormatOption:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionStrings()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DateFormat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeZone"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->timeZoneID:Ljava/lang/String;

    return-object v0
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    iput-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormatOption:Ljava/lang/String;

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormatOption:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/helpers/DateLayout;->setDateFormat(Ljava/lang/String;Ljava/util/TimeZone;)V

    .line 111
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "dateFormatType"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v1, 0x0

    .line 181
    if-nez p1, :cond_0

    .line 182
    iput-object v1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    .line 203
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iput-object v1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    goto :goto_0

    .line 188
    :cond_1
    const-string v0, "RELATIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    new-instance v0, Lorg/apache/log4j/helpers/RelativeTimeDateFormat;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/RelativeTimeDateFormat;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    goto :goto_0

    .line 190
    :cond_2
    const-string v0, "ABSOLUTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    new-instance v0, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;

    invoke-direct {v0, p2}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    goto :goto_0

    .line 193
    :cond_3
    const-string v0, "DATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    new-instance v0, Lorg/apache/log4j/helpers/DateTimeDateFormat;

    invoke-direct {v0, p2}, Lorg/apache/log4j/helpers/DateTimeDateFormat;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    goto :goto_0

    .line 196
    :cond_4
    const-string v0, "ISO8601"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    new-instance v0, Lorg/apache/log4j/helpers/ISO8601DateFormat;

    invoke-direct {v0, p2}, Lorg/apache/log4j/helpers/ISO8601DateFormat;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    goto :goto_0

    .line 200
    :cond_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    .line 201
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public setDateFormat(Ljava/text/DateFormat;Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/text/DateFormat;
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    .line 162
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 163
    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, "DateFormat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormatOption:Ljava/lang/String;

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v0, "TimeZone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-object p2, p0, Lorg/apache/log4j/helpers/DateLayout;->timeZoneID:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->timeZoneID:Ljava/lang/String;

    .line 128
    return-void
.end method
