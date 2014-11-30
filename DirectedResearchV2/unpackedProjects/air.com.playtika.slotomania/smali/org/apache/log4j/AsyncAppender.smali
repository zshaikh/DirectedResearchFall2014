.class public Lorg/apache/log4j/AsyncAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "AsyncAppender.java"

# interfaces
.implements Lorg/apache/log4j/spi/AppenderAttachable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/AsyncAppender$Dispatcher;,
        Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x80


# instance fields
.field aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private final appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private blocking:Z

.field private final buffer:Ljava/util/List;

.field private bufferSize:I

.field private final discardMap:Ljava/util/Map;

.field private final dispatcher:Ljava/lang/Thread;

.field private locationInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 106
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    .line 78
    const/16 v0, 0x80

    iput v0, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    .line 101
    iput-boolean v5, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    .line 107
    new-instance v0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 111
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/log4j/AsyncAppender$Dispatcher;

    iget-object v2, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/apache/log4j/AsyncAppender$Dispatcher;-><init>(Lorg/apache/log4j/AsyncAppender;Ljava/util/List;Ljava/util/Map;Lorg/apache/log4j/helpers/AppenderAttachableImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    .line 118
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 122
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Dispatcher-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    return-void
.end method


# virtual methods
.method public addAppender(Lorg/apache/log4j/Appender;)V
    .locals 2
    .param p1, "newAppender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 134
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 8
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 145
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    if-gtz v5, :cond_1

    .line 146
    :cond_0
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v5

    .line 147
    :try_start_0
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v6, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I

    .line 148
    monitor-exit v5

    .line 224
    :goto_0
    return-void

    .line 148
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 155
    :cond_1
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 159
    iget-boolean v5, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    if-eqz v5, :cond_2

    .line 160
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 163
    :cond_2
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v5

    .line 165
    :cond_3
    :try_start_1
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 167
    .local v3, "previousSize":I
    iget v6, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    if-ge v3, v6, :cond_5

    .line 168
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    if-nez v3, :cond_4

    .line 176
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 223
    :cond_4
    :goto_1
    monitor-exit v5

    goto :goto_0

    .end local v3    # "previousSize":I
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 189
    .restart local v3    # "previousSize":I
    :cond_5
    const/4 v0, 0x1

    .line 190
    .local v0, "discard":Z
    :try_start_2
    iget-boolean v6, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    if-eqz v6, :cond_6

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v6, v7, :cond_6

    .line 194
    :try_start_3
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    const/4 v0, 0x0

    .line 209
    :cond_6
    :goto_2
    if-eqz v0, :cond_3

    .line 210
    :try_start_4
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "loggerName":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    .line 213
    .local v4, "summary":Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    if-nez v4, :cond_7

    .line 214
    new-instance v4, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    .end local v4    # "summary":Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    invoke-direct {v4, p1}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;-><init>(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 215
    .restart local v4    # "summary":Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 196
    .end local v2    # "loggerName":Ljava/lang/String;
    .end local v4    # "summary":Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 201
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 217
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "loggerName":Ljava/lang/String;
    .restart local v4    # "summary":Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    :cond_7
    invoke-virtual {v4, p1}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->add(Lorg/apache/log4j/spi/LoggingEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public close()V
    .locals 5

    .prologue
    .line 235
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v3

    .line 236
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 237
    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 238
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    :try_start_1
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :goto_0
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v3

    .line 253
    :try_start_2
    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v4}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v1

    .line 255
    .local v1, "iter":Ljava/util/Enumeration;
    if-eqz v1, :cond_1

    .line 256
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 259
    .local v2, "next":Ljava/lang/Object;
    instance-of v4, v2, Lorg/apache/log4j/Appender;

    if-eqz v4, :cond_0

    .line 260
    check-cast v2, Lorg/apache/log4j/Appender;

    .end local v2    # "next":Ljava/lang/Object;
    invoke-interface {v2}, Lorg/apache/log4j/Appender;->close()V

    goto :goto_1

    .line 264
    .end local v1    # "iter":Ljava/util/Enumeration;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 238
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 242
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 243
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 244
    const-string v3, "Got an InterruptedException while waiting for the dispatcher to finish."

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 264
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "iter":Ljava/util/Enumeration;
    :cond_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 265
    return-void
.end method

.method public getAllAppenders()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 285
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 286
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBlocking()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    return v0
.end method

.method public getLocationInfo()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    return v0
.end method

.method public isAttached(Lorg/apache/log4j/Appender;)Z
    .locals 2
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 305
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->isAttached(Lorg/apache/log4j/Appender;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAllAppenders()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAllAppenders()V

    .line 323
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAppender(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAppender(Ljava/lang/String;)V

    .line 343
    monitor-exit v0

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAppender(Lorg/apache/log4j/Appender;)V
    .locals 2
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAppender(Lorg/apache/log4j/Appender;)V

    .line 333
    monitor-exit v0

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public setBlocking(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 404
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v0

    .line 405
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    .line 406
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 407
    monitor-exit v0

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBufferSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x1

    .line 376
    if-gez p1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    const-string v1, "size"

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v0

    .line 384
    if-ge p1, v1, :cond_1

    :goto_0
    :try_start_0
    iput v1, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    .line 385
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 386
    monitor-exit v0

    .line 387
    return-void

    :cond_1
    move v1, p1

    .line 384
    goto :goto_0

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 360
    iput-boolean p1, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    .line 361
    return-void
.end method
