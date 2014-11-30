.class public Lorg/apache/log4j/RollingFileAppender;
.super Lorg/apache/log4j/FileAppender;
.source "RollingFileAppender.java"


# instance fields
.field protected maxBackupIndex:I

.field protected maxFileSize:J

.field private nextRollover:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/log4j/FileAppender;-><init>()V

    .line 43
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V
    .locals 2
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/FileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V

    .line 43
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    .line 84
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
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/log4j/FileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V

    .line 43
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    .line 73
    return-void
.end method


# virtual methods
.method public getMaxBackupIndex()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    return v0
.end method

.method public getMaximumFileSize()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    return-wide v0
.end method

.method public rollOver()V
    .locals 14

    .prologue
    const/16 v10, 0x2e

    const/4 v9, 0x1

    const-string v13, "Renaming file "

    const-string v12, "."

    const-string v11, " to "

    .line 124
    iget-object v7, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v7, :cond_0

    .line 125
    iget-object v7, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    check-cast v7, Lorg/apache/log4j/helpers/CountingQuietWriter;

    invoke-virtual {v7}, Lorg/apache/log4j/helpers/CountingQuietWriter;->getCount()J

    move-result-wide v4

    .line 126
    .local v4, "size":J
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "rolling over count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 129
    iget-wide v7, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    add-long/2addr v7, v4

    iput-wide v7, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    .line 131
    .end local v4    # "size":J
    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "maxBackupIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 133
    const/4 v3, 0x1

    .line 135
    .local v3, "renameSucceeded":Z
    iget v7, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    if-lez v7, :cond_4

    .line 137
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 142
    :cond_1
    iget v7, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    sub-int v2, v7, v9

    .local v2, "i":I
    :goto_0
    if-lt v2, v9, :cond_3

    if-eqz v3, :cond_3

    .line 143
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v6, "target":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Renaming file "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 142
    .end local v6    # "target":Ljava/io/File;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 151
    :cond_3
    if-eqz v3, :cond_4

    .line 153
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v6    # "target":Ljava/io/File;
    invoke-virtual {p0}, Lorg/apache/log4j/FileAppender;->closeFile()V

    .line 157
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    iget-object v7, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v1    # "file":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Renaming file "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 163
    if-nez v3, :cond_4

    .line 165
    :try_start_0
    iget-object v7, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    const/4 v8, 0x1

    iget-boolean v9, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v10, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/apache/log4j/RollingFileAppender;->setFile(Ljava/lang/String;ZZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v6    # "target":Ljava/io/File;
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 181
    :try_start_1
    iget-object v7, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    const/4 v8, 0x0

    iget-boolean v9, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v10, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/apache/log4j/RollingFileAppender;->setFile(Ljava/lang/String;ZZI)V

    .line 182
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :cond_5
    :goto_2
    return-void

    .line 167
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v6    # "target":Ljava/io/File;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 168
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "setFile("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", true) call failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v6    # "target":Ljava/io/File;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 185
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "setFile("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", false) call failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public declared-synchronized setFile(Ljava/lang/String;ZZI)V
    .locals 4
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
    .line 194
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v2, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-super {p0, p1, p2, v1, v2}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V

    .line 195
    if-eqz p2, :cond_0

    .line 196
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "f":Ljava/io/File;
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    check-cast v1, Lorg/apache/log4j/helpers/CountingQuietWriter;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/log4j/helpers/CountingQuietWriter;->setCount(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMaxBackupIndex(I)V
    .locals 0
    .param p1, "maxBackups"    # I

    .prologue
    .line 213
    iput p1, p0, Lorg/apache/log4j/RollingFileAppender;->maxBackupIndex:I

    .line 214
    return-void
.end method

.method public setMaxFileSize(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lorg/apache/log4j/helpers/OptionConverter;->toFileSize(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    .line 248
    return-void
.end method

.method public setMaximumFileSize(J)V
    .locals 0
    .param p1, "maxFileSize"    # J

    .prologue
    .line 230
    iput-wide p1, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    .line 231
    return-void
.end method

.method protected setQWForFiles(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 252
    new-instance v0, Lorg/apache/log4j/helpers/CountingQuietWriter;

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, p1, v1}, Lorg/apache/log4j/helpers/CountingQuietWriter;-><init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    .line 253
    return-void
.end method

.method protected subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 4
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 263
    invoke-super {p0, p1}, Lorg/apache/log4j/WriterAppender;->subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 264
    iget-object v2, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    check-cast v2, Lorg/apache/log4j/helpers/CountingQuietWriter;

    invoke-virtual {v2}, Lorg/apache/log4j/helpers/CountingQuietWriter;->getCount()J

    move-result-wide v0

    .line 266
    .local v0, "size":J
    iget-wide v2, p0, Lorg/apache/log4j/RollingFileAppender;->maxFileSize:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/apache/log4j/RollingFileAppender;->nextRollover:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 267
    invoke-virtual {p0}, Lorg/apache/log4j/RollingFileAppender;->rollOver()V

    .line 270
    .end local v0    # "size":J
    :cond_0
    return-void
.end method
