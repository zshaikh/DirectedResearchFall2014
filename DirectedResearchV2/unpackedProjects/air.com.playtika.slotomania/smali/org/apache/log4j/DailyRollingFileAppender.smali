.class public Lorg/apache/log4j/DailyRollingFileAppender;
.super Lorg/apache/log4j/FileAppender;
.source "DailyRollingFileAppender.java"


# static fields
.field static final HALF_DAY:I = 0x2

.field static final TOP_OF_DAY:I = 0x3

.field static final TOP_OF_HOUR:I = 0x1

.field static final TOP_OF_MINUTE:I = 0x0

.field static final TOP_OF_MONTH:I = 0x5

.field static final TOP_OF_TROUBLE:I = -0x1

.field static final TOP_OF_WEEK:I = 0x4

.field static final gmtTimeZone:Ljava/util/TimeZone;


# instance fields
.field checkPeriod:I

.field private datePattern:Ljava/lang/String;

.field private nextCheck:J

.field now:Ljava/util/Date;

.field rc:Lorg/apache/log4j/RollingCalendar;

.field private scheduledFilename:Ljava/lang/String;

.field sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/DailyRollingFileAppender;->gmtTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/apache/log4j/FileAppender;-><init>()V

    .line 153
    const-string v0, "\'.\'yyyy-MM-dd"

    iput-object v0, p0, Lorg/apache/log4j/DailyRollingFileAppender;->datePattern:Ljava/lang/String;

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/log4j/DailyRollingFileAppender;->nextCheck:J

    .line 171
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/DailyRollingFileAppender;->now:Ljava/util/Date;

    .line 175
    new-instance v0, Lorg/apache/log4j/RollingCalendar;

    invoke-direct {v0}, Lorg/apache/log4j/RollingCalendar;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/DailyRollingFileAppender;->rc:Lorg/apache/log4j/RollingCalendar;

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/DailyRollingFileAppender;->checkPeriod:I

    .line 186
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "datePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/FileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V

    .line 153
    const-string v0, "\'.\'yyyy-MM-dd"

    iput-object v0, p0, Lorg/apache/log4j/DailyRollingFileAppender;->datePattern:Ljava/lang/String;

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/log4j/DailyRollingFileAppender;->nextCheck:J

    .line 171
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/DailyRollingFileAppender;->now:Ljava/util/Date;

    .line 175
    new-instance v0, Lorg/apache/log4j/RollingCalendar;

    invoke-direct {v0}, Lorg/apache/log4j/RollingCalendar;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/DailyRollingFileAppender;->rc:Lorg/apache/log4j/RollingCalendar;

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/DailyRollingFileAppender;->checkPeriod:I

    .line 197
    iput-object p3, p0, Lorg/apache/log4j/DailyRollingFileAppender;->datePattern:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lorg/apache/log4j/DailyRollingFileAppender;->activateOptions()V

    .line 199
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 7

    .prologue
    .line 216
    invoke-super {p0}, Lorg/apache/log4j/FileAppender;->activateOptions()V

    .line 217
    iget-object v2, p0, Lorg/apache/log4j/DailyRollingFileAppender;->datePattern:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lorg/apache/log4j/DailyRollingFileAppender;->now:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 219
    new-instance v2, Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lorg/apache/log4j/DailyRollingFileAppender;->datePattern:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/log4j/DailyRollingFileAppender;->sdf:Ljava/text/SimpleDateFormat;

    .line 220
    invoke-virtual {p0}, Lorg/apache/log4j/DailyRollingFileAppender;->computeCheckPeriod()I

    move-result v1

    .line 221
    .local v1, "type":I
    invoke-virtual {p0, v1}, Lorg/apache/log4j/DailyRollingFileAppender;->printPeriodicity(I)V

    .line 222
    iget-object v2, p0, Lorg/apache/log4j/DailyRollingFileAppender;->rc:Lorg/apache/log4j/RollingCalendar;

    invoke-virtual {v2, v1}, Lorg/apache/log4j/RollingCalendar;->setType(I)V

    .line 223
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/DailyRollingFileAppender;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/DailyRollingFileAppender;->scheduledFilename:Ljava/lang/String;

    .line 230
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "type":I
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Either File or DatePattern options are not set for appender ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method computeCheckPeriod()I
    .locals 9

    .prologue
    .line 273
    new-instance v5, Lorg/apache/log4j/RollingCalendar;

    sget-object v7, Lorg/apache/log4j/DailyRollingFileAppender;->gmtTimeZone:Ljava/util/TimeZone;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v5, v7, v8}, Lorg/apache/log4j/RollingCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 275
    .local v5, "rollingCalendar":Lorg/apache/log4j/RollingCalendar;
    new-instance v0, Ljava/util/Date;

    const-wide/16 v7, 0x0

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 276
    .local v0, "epoch":Ljava/util/Date;
    iget-object v7, p0, Lorg/apache/log4j/DailyRollingFileAppender;->datePattern:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v7, 0x5

    if-gt v1, v7, :cond_1

    .line 278
    new-instance v6, Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lorg/apache/log4j/DailyRollingFileAppender;->datePattern:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 279
    .local v6, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    sget-object v7, Lorg/apache/log4j/DailyRollingFileAppender;->gmtTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 280
    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "r0":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lorg/apache/log4j/RollingCalendar;->setType(I)V

    .line 282
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v5, v0}, Lorg/apache/log4j/RollingCalendar;->getNextCheckMillis(Ljava/util/Date;)J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 283
    .local v2, "next":Ljava/util/Date;
    invoke-virtual {v6, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "r1":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v1

    .line 290
    .end local v1    # "i":I
    .end local v2    # "next":Ljava/util/Date;
    .end local v3    # "r0":Ljava/lang/String;
    .end local v4    # "r1":Ljava/lang/String;
    .end local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_1
    return v7

    .line 277
    .restart local v1    # "i":I
    .restart local v2    # "next":Ljava/util/Date;
    .restart local v3    # "r0":Ljava/lang/String;
    .restart local v4    # "r1":Ljava/lang/String;
    .restart local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "i":I
    .end local v2    # "next":Ljava/util/Date;
    .end local v3    # "r0":Ljava/lang/String;
    .end local v4    # "r1":Ljava/lang/String;
    .end local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :cond_1
    const/4 v7, -0x1

    goto :goto_1
.end method

.method public getDatePattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/log4j/DailyRollingFileAppender;->datePattern:Ljava/lang/String;

    return-object v0
.end method

.method printPeriodicity(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const-string v2, "Appender ["

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 258
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unknown periodicity for appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 235
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] to be rolled every minute."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] to be rolled on top of every hour."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] to be rolled at midday and midnight."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] to be rolled at midnight."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] to be rolled at start of week."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] to be rolled at start of every month."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
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

.method rollOver()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v5, p0, Lorg/apache/log4j/DailyRollingFileAppender;->datePattern:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 300
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v6, "Missing DatePattern option in rollOver()."

    invoke-interface {v5, v6}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/DailyRollingFileAppender;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lorg/apache/log4j/DailyRollingFileAppender;->now:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "datedFilename":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/log4j/DailyRollingFileAppender;->scheduledFilename:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 313
    invoke-virtual {p0}, Lorg/apache/log4j/FileAppender;->closeFile()V

    .line 315
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/apache/log4j/DailyRollingFileAppender;->scheduledFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v4, "target":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 317
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 320
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 322
    .local v3, "result":Z
    if-eqz v3, :cond_3

    .line 323
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/DailyRollingFileAppender;->scheduledFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 331
    :goto_1
    :try_start_0
    iget-object v5, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v8, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_2
    iput-object v0, p0, Lorg/apache/log4j/DailyRollingFileAppender;->scheduledFilename:Ljava/lang/String;

    goto :goto_0

    .line 325
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Failed to rename ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "] to ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/DailyRollingFileAppender;->scheduledFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 333
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 334
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "setFile("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", false) call failed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setDatePattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/apache/log4j/DailyRollingFileAppender;->datePattern:Ljava/lang/String;

    .line 208
    return-void
.end method

.method protected subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 349
    .local v1, "n":J
    iget-wide v3, p0, Lorg/apache/log4j/DailyRollingFileAppender;->nextCheck:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 350
    iget-object v3, p0, Lorg/apache/log4j/DailyRollingFileAppender;->now:Ljava/util/Date;

    invoke-virtual {v3, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 351
    iget-object v3, p0, Lorg/apache/log4j/DailyRollingFileAppender;->rc:Lorg/apache/log4j/RollingCalendar;

    iget-object v4, p0, Lorg/apache/log4j/DailyRollingFileAppender;->now:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lorg/apache/log4j/RollingCalendar;->getNextCheckMillis(Ljava/util/Date;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/log4j/DailyRollingFileAppender;->nextCheck:J

    .line 353
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/DailyRollingFileAppender;->rollOver()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/log4j/WriterAppender;->subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 360
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "ioe":Ljava/io/IOException;
    const-string v3, "rollOver() failed."

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
