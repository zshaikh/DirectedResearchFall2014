.class public Lorg/apache/log4j/varia/FallbackErrorHandler;
.super Ljava/lang/Object;
.source "FallbackErrorHandler.java"

# interfaces
.implements Lorg/apache/log4j/spi/ErrorHandler;


# instance fields
.field backup:Lorg/apache/log4j/Appender;

.field loggers:Ljava/util/Vector;

.field primary:Lorg/apache/log4j/Appender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "errorCode"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/log4j/varia/FallbackErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V

    .line 78
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "errorCode"    # I
    .param p4, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    const-string v5, "]."

    const-string v4, "] in logger ["

    .line 86
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "FB: The following error reported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    const-string v2, "FB: INITIATING FALLBACK PROCEDURE."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->loggers:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->loggers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 90
    iget-object v2, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->loggers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/Logger;

    .line 91
    .local v1, "l":Lorg/apache/log4j/Logger;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "FB: Searching for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->primary:Lorg/apache/log4j/Appender;

    invoke-interface {v3}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] in logger ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "FB: Replacing ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->primary:Lorg/apache/log4j/Appender;

    invoke-interface {v3}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] by ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->backup:Lorg/apache/log4j/Appender;

    invoke-interface {v3}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] in logger ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->primary:Lorg/apache/log4j/Appender;

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Category;->removeAppender(Lorg/apache/log4j/Appender;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "FB: Adding appender ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->backup:Lorg/apache/log4j/Appender;

    invoke-interface {v3}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] to logger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->backup:Lorg/apache/log4j/Appender;

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 101
    .end local v0    # "i":I
    .end local v1    # "l":Lorg/apache/log4j/Logger;
    :cond_0
    return-void
.end method

.method public setAppender(Lorg/apache/log4j/Appender;)V
    .locals 2
    .param p1, "primary"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FB: Setting primary appender to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->primary:Lorg/apache/log4j/Appender;

    .line 123
    return-void
.end method

.method public setBackupAppender(Lorg/apache/log4j/Appender;)V
    .locals 2
    .param p1, "backup"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FB: Setting backup appender to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->backup:Lorg/apache/log4j/Appender;

    .line 132
    return-void
.end method

.method public setLogger(Lorg/apache/log4j/Logger;)V
    .locals 2
    .param p1, "logger"    # Lorg/apache/log4j/Logger;

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FB: Adding logger ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->loggers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->loggers:Ljava/util/Vector;

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/varia/FallbackErrorHandler;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 61
    return-void
.end method
