.class public Lorg/apache/log4j/net/SyslogAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "SyslogAppender.java"


# static fields
.field protected static final FACILITY_OI:I = 0x1

.field public static final LOG_AUTH:I = 0x20

.field public static final LOG_AUTHPRIV:I = 0x50

.field public static final LOG_CRON:I = 0x48

.field public static final LOG_DAEMON:I = 0x18

.field public static final LOG_FTP:I = 0x58

.field public static final LOG_KERN:I = 0x0

.field public static final LOG_LOCAL0:I = 0x80

.field public static final LOG_LOCAL1:I = 0x88

.field public static final LOG_LOCAL2:I = 0x90

.field public static final LOG_LOCAL3:I = 0x98

.field public static final LOG_LOCAL4:I = 0xa0

.field public static final LOG_LOCAL5:I = 0xa8

.field public static final LOG_LOCAL6:I = 0xb0

.field public static final LOG_LOCAL7:I = 0xb8

.field public static final LOG_LPR:I = 0x30

.field public static final LOG_MAIL:I = 0x10

.field public static final LOG_NEWS:I = 0x38

.field public static final LOG_SYSLOG:I = 0x28

.field public static final LOG_USER:I = 0x8

.field public static final LOG_UUCP:I = 0x40

.field protected static final SYSLOG_HOST_OI:I = 0x0

.field static final TAB:Ljava/lang/String; = "    "


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field facilityPrinting:Z

.field facilityStr:Ljava/lang/String;

.field private header:Z

.field private layoutHeaderChecked:Z

.field private localHostname:Ljava/lang/String;

.field sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

.field syslogFacility:I

.field syslogHost:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 96
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 98
    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    .line 109
    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    .line 114
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 124
    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    .line 128
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->initSyslogFacilityStr()V

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;I)V
    .locals 4
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "syslogFacility"    # I

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 96
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 98
    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    .line 109
    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    .line 114
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 124
    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    .line 133
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    .line 134
    iput p2, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 135
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->initSyslogFacilityStr()V

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;I)V
    .locals 0
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "syslogHost"    # Ljava/lang/String;
    .param p3, "syslogFacility"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1, p3}, Lorg/apache/log4j/net/SyslogAppender;-><init>(Lorg/apache/log4j/Layout;I)V

    .line 141
    invoke-virtual {p0, p2}, Lorg/apache/log4j/net/SyslogAppender;->setSyslogHost(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static getFacility(Ljava/lang/String;)I
    .locals 1
    .param p0, "facilityName"    # Ljava/lang/String;

    .prologue
    .line 226
    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 229
    :cond_0
    const-string v0, "KERN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const/4 v0, 0x0

    .line 270
    :goto_0
    return v0

    .line 231
    :cond_1
    const-string v0, "USER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const/16 v0, 0x8

    goto :goto_0

    .line 233
    :cond_2
    const-string v0, "MAIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    const/16 v0, 0x10

    goto :goto_0

    .line 235
    :cond_3
    const-string v0, "DAEMON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    const/16 v0, 0x18

    goto :goto_0

    .line 237
    :cond_4
    const-string v0, "AUTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    const/16 v0, 0x20

    goto :goto_0

    .line 239
    :cond_5
    const-string v0, "SYSLOG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 240
    const/16 v0, 0x28

    goto :goto_0

    .line 241
    :cond_6
    const-string v0, "LPR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    const/16 v0, 0x30

    goto :goto_0

    .line 243
    :cond_7
    const-string v0, "NEWS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 244
    const/16 v0, 0x38

    goto :goto_0

    .line 245
    :cond_8
    const-string v0, "UUCP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 246
    const/16 v0, 0x40

    goto :goto_0

    .line 247
    :cond_9
    const-string v0, "CRON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 248
    const/16 v0, 0x48

    goto :goto_0

    .line 249
    :cond_a
    const-string v0, "AUTHPRIV"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 250
    const/16 v0, 0x50

    goto :goto_0

    .line 251
    :cond_b
    const-string v0, "FTP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 252
    const/16 v0, 0x58

    goto :goto_0

    .line 253
    :cond_c
    const-string v0, "LOCAL0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 254
    const/16 v0, 0x80

    goto/16 :goto_0

    .line 255
    :cond_d
    const-string v0, "LOCAL1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 256
    const/16 v0, 0x88

    goto/16 :goto_0

    .line 257
    :cond_e
    const-string v0, "LOCAL2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 258
    const/16 v0, 0x90

    goto/16 :goto_0

    .line 259
    :cond_f
    const-string v0, "LOCAL3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 260
    const/16 v0, 0x98

    goto/16 :goto_0

    .line 261
    :cond_10
    const-string v0, "LOCAL4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 262
    const/16 v0, 0xa0

    goto/16 :goto_0

    .line 263
    :cond_11
    const-string v0, "LOCAL5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 264
    const/16 v0, 0xa8

    goto/16 :goto_0

    .line 265
    :cond_12
    const-string v0, "LOCAL6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 266
    const/16 v0, 0xb0

    goto/16 :goto_0

    .line 267
    :cond_13
    const-string v0, "LOCAL7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 268
    const/16 v0, 0xb8

    goto/16 :goto_0

    .line 270
    :cond_14
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getFacilityString(I)Ljava/lang/String;
    .locals 1
    .param p0, "syslogFacility"    # I

    .prologue
    .line 187
    sparse-switch p0, :sswitch_data_0

    .line 208
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 188
    :sswitch_0
    const-string v0, "kern"

    goto :goto_0

    .line 189
    :sswitch_1
    const-string v0, "user"

    goto :goto_0

    .line 190
    :sswitch_2
    const-string v0, "mail"

    goto :goto_0

    .line 191
    :sswitch_3
    const-string v0, "daemon"

    goto :goto_0

    .line 192
    :sswitch_4
    const-string v0, "auth"

    goto :goto_0

    .line 193
    :sswitch_5
    const-string v0, "syslog"

    goto :goto_0

    .line 194
    :sswitch_6
    const-string v0, "lpr"

    goto :goto_0

    .line 195
    :sswitch_7
    const-string v0, "news"

    goto :goto_0

    .line 196
    :sswitch_8
    const-string v0, "uucp"

    goto :goto_0

    .line 197
    :sswitch_9
    const-string v0, "cron"

    goto :goto_0

    .line 198
    :sswitch_a
    const-string v0, "authpriv"

    goto :goto_0

    .line 199
    :sswitch_b
    const-string v0, "ftp"

    goto :goto_0

    .line 200
    :sswitch_c
    const-string v0, "local0"

    goto :goto_0

    .line 201
    :sswitch_d
    const-string v0, "local1"

    goto :goto_0

    .line 202
    :sswitch_e
    const-string v0, "local2"

    goto :goto_0

    .line 203
    :sswitch_f
    const-string v0, "local3"

    goto :goto_0

    .line 204
    :sswitch_10
    const-string v0, "local4"

    goto :goto_0

    .line 205
    :sswitch_11
    const-string v0, "local5"

    goto :goto_0

    .line 206
    :sswitch_12
    const-string v0, "local6"

    goto :goto_0

    .line 207
    :sswitch_13
    const-string v0, "local7"

    goto :goto_0

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x80 -> :sswitch_c
        0x88 -> :sswitch_d
        0x90 -> :sswitch_e
        0x98 -> :sswitch_f
        0xa0 -> :sswitch_10
        0xa8 -> :sswitch_11
        0xb0 -> :sswitch_12
        0xb8 -> :sswitch_13
    .end sparse-switch
.end method

.method private getLocalHostname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 476
    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 478
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 479
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;

    return-object v2

    .line 480
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 481
    .local v1, "uhe":Ljava/net/UnknownHostException;
    const-string v2, "UNKNOWN_HOST"

    iput-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;

    goto :goto_0
.end method

.method private getPacketHeader(J)Ljava/lang/String;
    .locals 5
    .param p1, "timeStamp"    # J

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x4

    .line 494
    iget-boolean v1, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    if-eqz v1, :cond_1

    .line 495
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 498
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 500
    :cond_0
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->getLocalHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private initSyslogFacilityStr()V
    .locals 3

    .prologue
    .line 168
    iget v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-static {v0}, Lorg/apache/log4j/net/SyslogAppender;->getFacilityString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" is an unknown syslog facility. Defaulting to \"USER\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 174
    const-string v0, "user:"

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    goto :goto_0
.end method

.method private sendLayoutMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 512
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    if-eqz v3, :cond_3

    .line 513
    move-object v2, p1

    .line 514
    .local v2, "packet":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lorg/apache/log4j/net/SyslogAppender;->getPacketHeader(J)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "hdr":Ljava/lang/String;
    iget-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 516
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-eqz v3, :cond_1

    .line 518
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 523
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->setLevel(I)V

    .line 524
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v3, v2}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    .line 526
    .end local v1    # "hdr":Ljava/lang/String;
    .end local v2    # "packet":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private splitPacket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "packet"    # Ljava/lang/String;

    .prologue
    const-string v5, "..."

    .line 276
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v0, v2

    .line 282
    .local v0, "byteCount":I
    const/16 v2, 0x3fb

    if-gt v0, v2, :cond_0

    .line 283
    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v2, p2}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 286
    .local v1, "split":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/log4j/net/SyslogAppender;->splitPacket(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/log4j/net/SyslogAppender;->splitPacket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public activateOptions()V
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->getLocalHostname()Ljava/lang/String;

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/net/SyslogAppender;->sendLayoutMessage(Ljava/lang/String;)V

    .line 358
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    .line 359
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 9
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    const/4 v8, 0x1

    .line 294
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/log4j/AppenderSkeleton;->isAsSevereAsThreshold(Lorg/apache/log4j/Priority;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    if-nez v5, :cond_2

    .line 299
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "No syslog host is set for SyslogAppedender named \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\"."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-boolean v5, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    if-nez v5, :cond_4

    .line 305
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 306
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/log4j/net/SyslogAppender;->sendLayoutMessage(Ljava/lang/String;)V

    .line 308
    :cond_3
    iput-boolean v8, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    .line 311
    :cond_4
    iget-wide v5, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-direct {p0, v5, v6}, Lorg/apache/log4j/net/SyslogAppender;->getPacketHeader(J)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "hdr":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "packet":Ljava/lang/String;
    iget-boolean v5, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-nez v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 314
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-boolean v5, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-eqz v5, :cond_6

    .line 316
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_7
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/log4j/Priority;->getSyslogEquivalent()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->setLevel(I)V

    .line 326
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-le v5, v6, :cond_8

    .line 327
    invoke-direct {p0, v1, v3}, Lorg/apache/log4j/net/SyslogAppender;->splitPacket(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_1
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "s":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 335
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 336
    aget-object v5, v4, v2

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 337
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    .line 335
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 329
    .end local v2    # "i":I
    .end local v4    # "s":[Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v5, v3}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 339
    .restart local v2    # "i":I
    .restart local v4    # "s":[Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 152
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 153
    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 155
    :try_start_1
    iget-boolean v1, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/log4j/net/SyslogAppender;->sendLayoutMessage(Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v1}, Ljava/io/FilterWriter;->close()V

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 161
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getFacility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-static {v0}, Lorg/apache/log4j/net/SyslogAppender;->getFacilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacilityPrinting()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    return v0
.end method

.method public final getHeader()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    return v0
.end method

.method public getSyslogHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogHost:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method public setFacility(Ljava/lang/String;)V
    .locals 3
    .param p1, "facilityName"    # Ljava/lang/String;

    .prologue
    .line 407
    if-nez p1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-static {p1}, Lorg/apache/log4j/net/SyslogAppender;->getFacility(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 411
    iget v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 412
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] is an unknown syslog facility. Defaulting to [USER]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 417
    :cond_2
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->initSyslogFacilityStr()V

    .line 420
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    iget v1, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-virtual {v0, v1}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->setSyslogFacility(I)V

    goto :goto_0
.end method

.method public setFacilityPrinting(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    .line 441
    return-void
.end method

.method public final setHeader(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 467
    iput-boolean p1, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    .line 468
    return-void
.end method

.method public setSyslogHost(Ljava/lang/String;)V
    .locals 4
    .param p1, "syslogHost"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v0, Lorg/apache/log4j/helpers/SyslogQuietWriter;

    new-instance v1, Lorg/apache/log4j/helpers/SyslogWriter;

    invoke-direct {v1, p1}, Lorg/apache/log4j/helpers/SyslogWriter;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/helpers/SyslogQuietWriter;-><init>(Ljava/io/Writer;ILorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    .line 385
    iput-object p1, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogHost:Ljava/lang/String;

    .line 386
    return-void
.end method
