.class public Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;
.super Ljava/lang/Object;
.source "OnlyOnceErrorHandler.java"

# interfaces
.implements Lorg/apache/log4j/spi/ErrorHandler;


# instance fields
.field final ERROR_PREFIX:Ljava/lang/String;

.field final WARN_PREFIX:Ljava/lang/String;

.field firstTime:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "log4j warning: "

    iput-object v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->WARN_PREFIX:Ljava/lang/String;

    .line 42
    const-string v0, "log4j error: "

    iput-object v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->ERROR_PREFIX:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    .line 94
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "errorCode"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V

    .line 69
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "errorCode"    # I
    .param p4, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p1, p2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    .line 81
    :cond_0
    return-void
.end method

.method public setAppender(Lorg/apache/log4j/Appender;)V
    .locals 0
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 101
    return-void
.end method

.method public setBackupAppender(Lorg/apache/log4j/Appender;)V
    .locals 0
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 108
    return-void
.end method

.method public setLogger(Lorg/apache/log4j/Logger;)V
    .locals 0
    .param p1, "logger"    # Lorg/apache/log4j/Logger;

    .prologue
    .line 52
    return-void
.end method
