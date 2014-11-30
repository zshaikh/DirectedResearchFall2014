.class public Lorg/apache/log4j/WriterAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "WriterAppender.java"


# instance fields
.field protected encoding:Ljava/lang/String;

.field protected immediateFlush:Z

.field protected qw:Lorg/apache/log4j/helpers/QuietWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 83
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/log4j/WriterAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/io/Writer;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/io/Writer;)V
    .locals 1
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "writer"    # Ljava/io/Writer;

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    .line 94
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    .line 95
    invoke-virtual {p0, p2}, Lorg/apache/log4j/WriterAppender;->setWriter(Ljava/io/Writer;)V

    .line 96
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->checkEntryConditions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/log4j/WriterAppender;->subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V

    goto :goto_0
.end method

.method protected checkEntryConditions()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "]."

    .line 171
    iget-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "Not allowed to write to a closed appender."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    move v0, v3

    .line 186
    :goto_0
    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No output stream or file set for the appender named ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    move v0, v3

    .line 179
    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No layout set for the appender named ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    move v0, v3

    .line 184
    goto :goto_0

    .line 186
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 204
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->writeFooter()V

    .line 205
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected closeWriter()V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v1, :cond_0

    .line 214
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1}, Ljava/io/FilterWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 218
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;
    .locals 5
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 231
    const/4 v2, 0x0

    .line 233
    .local v2, "retval":Ljava/io/OutputStreamWriter;
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "enc":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 236
    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "retval":Ljava/io/OutputStreamWriter;
    .local v3, "retval":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .line 242
    .end local v3    # "retval":Ljava/io/OutputStreamWriter;
    .restart local v2    # "retval":Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 243
    new-instance v2, Ljava/io/OutputStreamWriter;

    .end local v2    # "retval":Ljava/io/OutputStreamWriter;
    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 245
    .restart local v2    # "retval":Ljava/io/OutputStreamWriter;
    :cond_1
    return-object v2

    .line 237
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 238
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Error initializing output writer."

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 239
    const-string v4, "Unsupported encoding?"

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediateFlush()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    return v0
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->closeWriter()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    .line 341
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lorg/apache/log4j/WriterAppender;->encoding:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public declared-synchronized setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V
    .locals 1
    .param p1, "eh"    # Lorg/apache/log4j/spi/ErrorHandler;

    .prologue
    .line 263
    monitor-enter p0

    if-nez p1, :cond_1

    .line 264
    :try_start_0
    const-string v0, "You have tried to set a null error-handler."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 266
    :cond_1
    :try_start_1
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    .line 267
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/QuietWriter;->setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImmediateFlush(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    .line 115
    return-void
.end method

.method public declared-synchronized setWriter(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->reset()V

    .line 287
    new-instance v0, Lorg/apache/log4j/helpers/QuietWriter;

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, p1, v1}, Lorg/apache/log4j/helpers/QuietWriter;-><init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    .line 289
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->writeHeader()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 302
    iget-object v3, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    iget-object v4, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v4, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v3}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "s":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 307
    array-length v1, v2

    .line 308
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 309
    iget-object v3, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    sget-object v4, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "s":[Ljava/lang/String;
    :cond_0
    iget-boolean v3, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    if-eqz v3, :cond_1

    .line 316
    iget-object v3, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v3}, Lorg/apache/log4j/helpers/QuietWriter;->flush()V

    .line 318
    :cond_1
    return-void
.end method

.method protected writeFooter()V
    .locals 2

    .prologue
    .line 349
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "f":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/QuietWriter;->flush()V

    .line 356
    .end local v0    # "f":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected writeHeader()V
    .locals 2

    .prologue
    .line 363
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "h":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 368
    .end local v0    # "h":Ljava/lang/String;
    :cond_0
    return-void
.end method
