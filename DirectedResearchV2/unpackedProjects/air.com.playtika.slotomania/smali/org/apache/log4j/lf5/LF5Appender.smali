.class public Lorg/apache/log4j/lf5/LF5Appender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "LF5Appender.java"


# static fields
.field protected static _defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

.field protected static _finalizer:Lorg/apache/log4j/lf5/AppenderFinalizer;


# instance fields
.field protected _logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultInstance()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/LF5Appender;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0
    .param p1, "monitor"    # Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 86
    :cond_0
    return-void
.end method

.method protected static declared-synchronized getDefaultInstance()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    .locals 5

    .prologue
    .line 206
    const-class v1, Lorg/apache/log4j/lf5/LF5Appender;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 208
    :try_start_1
    new-instance v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLog4JLevels()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;-><init>(Ljava/util/List;)V

    sput-object v2, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 210
    new-instance v2, Lorg/apache/log4j/lf5/AppenderFinalizer;

    sget-object v3, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {v2, v3}, Lorg/apache/log4j/lf5/AppenderFinalizer;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    sput-object v2, Lorg/apache/log4j/lf5/LF5Appender;->_finalizer:Lorg/apache/log4j/lf5/AppenderFinalizer;

    .line 212
    sget-object v2, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultMonitorWidth()I

    move-result v3

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultMonitorHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFrameSize(II)V

    .line 214
    sget-object v2, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSize(I)V

    .line 215
    sget-object v2, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->show()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v2

    .line 217
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 218
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v2, 0x0

    :try_start_3
    sput-object v2, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method protected static getDefaultMonitorHeight()I
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getScreenHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected static getDefaultMonitorWidth()I
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected static getScreenHeight()I
    .locals 2

    .prologue
    .line 245
    :try_start_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v1

    iget v1, v1, Ljava/awt/Dimension;->height:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return v1

    .line 246
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 247
    .local v0, "t":Ljava/lang/Throwable;
    const/16 v1, 0x258

    goto :goto_0
.end method

.method protected static getScreenWidth()I
    .locals 2

    .prologue
    .line 232
    :try_start_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v1

    iget v1, v1, Ljava/awt/Dimension;->width:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return v1

    .line 233
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 234
    .local v0, "t":Ljava/lang/Throwable;
    const/16 v1, 0x320

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 192
    new-instance v0, Lorg/apache/log4j/lf5/LF5Appender;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/LF5Appender;-><init>()V

    .line 193
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 11
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 100
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "logMessage":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "nestedDiagnosticContext":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "threadDescription":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/log4j/Priority;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "level":Ljava/lang/String;
    iget-wide v8, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    .line 106
    .local v8, "time":J
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v3

    .line 109
    .local v3, "locationInfo":Lorg/apache/log4j/spi/LocationInfo;
    new-instance v6, Lorg/apache/log4j/lf5/Log4JLogRecord;

    invoke-direct {v6}, Lorg/apache/log4j/lf5/Log4JLogRecord;-><init>()V

    .line 111
    .local v6, "record":Lorg/apache/log4j/lf5/Log4JLogRecord;
    invoke-virtual {v6, v0}, Lorg/apache/log4j/lf5/LogRecord;->setCategory(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v6, v4}, Lorg/apache/log4j/lf5/LogRecord;->setMessage(Ljava/lang/String;)V

    .line 113
    iget-object v10, v3, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/apache/log4j/lf5/LogRecord;->setLocation(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v6, v8, v9}, Lorg/apache/log4j/lf5/LogRecord;->setMillis(J)V

    .line 115
    invoke-virtual {v6, v7}, Lorg/apache/log4j/lf5/LogRecord;->setThreadDescription(Ljava/lang/String;)V

    .line 117
    if-eqz v5, :cond_2

    .line 118
    invoke-virtual {v6, v5}, Lorg/apache/log4j/lf5/LogRecord;->setNDC(Ljava/lang/String;)V

    .line 123
    :goto_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 124
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setThrownStackTrace(Lorg/apache/log4j/spi/ThrowableInformation;)V

    .line 128
    :cond_0
    :try_start_0
    invoke-static {v2}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/apache/log4j/lf5/LogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V
    :try_end_0
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    iget-object v10, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    if-eqz v10, :cond_1

    .line 136
    iget-object v10, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v10, v6}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    .line 138
    :cond_1
    return-void

    .line 120
    :cond_2
    const-string v10, ""

    invoke-virtual {v6, v10}, Lorg/apache/log4j/lf5/LogRecord;->setNDC(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 132
    .local v1, "e":Lorg/apache/log4j/lf5/LogLevelFormatException;
    sget-object v10, Lorg/apache/log4j/lf5/LogLevel;->WARN:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v6, v10}, Lorg/apache/log4j/lf5/LogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    goto :goto_1
.end method

.method public close()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public equals(Lorg/apache/log4j/lf5/LF5Appender;)Z
    .locals 2
    .param p1, "compareTo"    # Lorg/apache/log4j/lf5/LF5Appender;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LF5Appender;->getLogBrokerMonitor()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogBrokerMonitor()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public setCallSystemExitOnClose(Z)V
    .locals 1
    .param p1, "callSystemExitOnClose"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setCallSystemExitOnClose(Z)V

    .line 171
    return-void
.end method

.method public setMaxNumberOfRecords(I)V
    .locals 1
    .param p1, "maxNumberOfRecords"    # I

    .prologue
    .line 196
    sget-object v0, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setMaxNumberOfLogRecords(I)V

    .line 197
    return-void
.end method
