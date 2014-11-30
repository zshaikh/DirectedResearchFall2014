.class public Lorg/apache/log4j/FileAppender;
.super Lorg/apache/log4j/WriterAppender;
.source "FileAppender.java"


# instance fields
.field protected bufferSize:I

.field protected bufferedIO:Z

.field protected fileAppend:Z

.field protected fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    .line 66
    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V
    .locals 1
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/FileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    .line 66
    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 108
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    .line 109
    iget v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, p2, p3, v1, v0}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;ZZI)V
    .locals 1
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .param p4, "bufferedIO"    # Z
    .param p5, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    .line 66
    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 92
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    .line 93
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V

    .line 94
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 5

    .prologue
    .line 162
    iget-object v1, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 164
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    iget-boolean v3, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v4, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 167
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "setFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") call failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "File option not set for appender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 173
    const-string v1, "Are you using FileAppender instead of ConsoleAppender?"

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected closeFile()V
    .locals 3

    .prologue
    .line 182
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v1, :cond_0

    .line 184
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1}, Ljava/io/FilterWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 189
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

.method public getAppend()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    return v0
.end method

.method public getBufferedIO()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/apache/log4j/FileAppender;->closeFile()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 341
    invoke-super {p0}, Lorg/apache/log4j/WriterAppender;->reset()V

    .line 342
    return-void
.end method

.method public setAppend(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    .line 230
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 256
    iput p1, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 257
    return-void
.end method

.method public setBufferedIO(Z)V
    .locals 1
    .param p1, "bufferedIO"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    .line 245
    if-eqz p1, :cond_0

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    .line 248
    :cond_0
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "val":Ljava/lang/String;
    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public declared-synchronized setFile(Ljava/lang/String;ZZI)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "bufferedIO"    # Z
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "setFile called: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 280
    if-eqz p3, :cond_0

    .line 281
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/apache/log4j/WriterAppender;->setImmediateFlush(Z)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/FileAppender;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    const/4 v3, 0x0

    .line 290
    .local v3, "ostream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3    # "ostream":Ljava/io/FileOutputStream;
    invoke-direct {v3, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    .restart local v3    # "ostream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {p0, v3}, Lorg/apache/log4j/WriterAppender;->createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    .line 310
    .local v1, "fw":Ljava/io/Writer;
    if-eqz p3, :cond_1

    .line 311
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1, p4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .end local v1    # "fw":Ljava/io/Writer;
    .local v2, "fw":Ljava/io/Writer;
    move-object v1, v2

    .line 313
    .end local v2    # "fw":Ljava/io/Writer;
    .restart local v1    # "fw":Ljava/io/Writer;
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/log4j/FileAppender;->setQWForFiles(Ljava/io/Writer;)V

    .line 314
    iput-object p1, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 315
    iput-boolean p2, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    .line 316
    iput-boolean p3, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    .line 317
    iput p4, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 318
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->writeHeader()V

    .line 319
    const-string v6, "setFile ended"

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 291
    .end local v1    # "fw":Ljava/io/Writer;
    .end local v3    # "ostream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 297
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :try_start_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "parentName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 299
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v4, "parentDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 301
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .restart local v3    # "ostream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 303
    .end local v3    # "ostream":Ljava/io/FileOutputStream;
    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .end local v4    # "parentDir":Ljava/io/File;
    .end local v5    # "parentName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 306
    .restart local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v5    # "parentName":Ljava/lang/String;
    :cond_3
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected setQWForFiles(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 330
    new-instance v0, Lorg/apache/log4j/helpers/QuietWriter;

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, p1, v1}, Lorg/apache/log4j/helpers/QuietWriter;-><init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    .line 331
    return-void
.end method
