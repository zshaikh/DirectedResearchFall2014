.class public Lorg/apache/log4j/net/SocketHubAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "SocketHubAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;
    }
.end annotation


# static fields
.field static final DEFAULT_PORT:I = 0x11d0


# instance fields
.field private locationInfo:Z

.field private oosList:Ljava/util/Vector;

.field private port:I

.field private serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 113
    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 114
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    .line 118
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "_port"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 113
    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 114
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    .line 124
    iput p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 125
    invoke-direct {p0}, Lorg/apache/log4j/net/SocketHubAppender;->startServer()V

    .line 126
    return-void
.end method

.method private startServer()V
    .locals 3

    .prologue
    .line 270
    new-instance v0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    iget v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;-><init>(Lorg/apache/log4j/net/SocketHubAppender;ILjava/util/Vector;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    .line 271
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/apache/log4j/net/SocketHubAppender;->startServer()V

    .line 133
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 225
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-boolean v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    if-eqz v4, :cond_2

    .line 188
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 192
    :cond_2
    const/4 v3, 0x0

    .local v3, "streamCount":I
    :goto_0
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 194
    const/4 v2, 0x0

    .line 196
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/ObjectOutputStream;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :goto_1
    if-eqz v2, :cond_0

    .line 209
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 214
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 218
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 219
    const-string v4, "dropped connection"

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 222
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 198
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    const-string v2, "stopping ServerSocket"

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    invoke-virtual {v2}, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->stopMonitor()V

    .line 159
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    .line 162
    const-string v2, "closing client connections"

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectOutputStream;

    .line 165
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_1
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "could not close oos."

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 176
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    :cond_1
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "closing SocketHubAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 147
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketHubAppender;->cleanUp()V

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SocketHubAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocationInfo()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    return v0
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "_locationInfo"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    .line 257
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "_port"    # I

    .prologue
    .line 240
    iput p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 241
    return-void
.end method
