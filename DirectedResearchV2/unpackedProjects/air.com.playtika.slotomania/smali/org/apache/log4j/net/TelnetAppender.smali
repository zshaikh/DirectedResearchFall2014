.class public Lorg/apache/log4j/net/TelnetAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "TelnetAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/net/TelnetAppender$SocketHandler;
    }
.end annotation


# instance fields
.field private port:I

.field private sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 59
    const/16 v0, 0x17

    iput v0, p0, Lorg/apache/log4j/net/TelnetAppender;->port:I

    .line 124
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 3

    .prologue
    .line 72
    :try_start_0
    new-instance v1, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    iget v2, p0, Lorg/apache/log4j/net/TelnetAppender;->port:I

    invoke-direct {v1, p0, v2}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;-><init>(Lorg/apache/log4j/net/TelnetAppender;I)V

    iput-object v1, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    .line 73
    iget-object v1, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    invoke-super {p0}, Lorg/apache/log4j/AppenderSkeleton;->activateOptions()V

    .line 79
    return-void

    .line 75
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 106
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    iget-object v4, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v4, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->send(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v3}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "s":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 110
    array-length v1, v2

    .line 111
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 112
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->send(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    sget-object v4, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->send(Ljava/lang/String;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "s":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    invoke-virtual {v0}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->close()V

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/apache/log4j/net/TelnetAppender;->port:I

    return v0
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 88
    iput p1, p0, Lorg/apache/log4j/net/TelnetAppender;->port:I

    .line 89
    return-void
.end method
