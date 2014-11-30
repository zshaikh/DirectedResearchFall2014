.class public Lorg/apache/log4j/jdbc/JDBCAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "JDBCAppender.java"

# interfaces
.implements Lorg/apache/log4j/Appender;


# instance fields
.field protected buffer:Ljava/util/ArrayList;

.field protected bufferSize:I

.field protected connection:Ljava/sql/Connection;

.field protected databasePassword:Ljava/lang/String;

.field protected databaseURL:Ljava/lang/String;

.field protected databaseUser:Ljava/lang/String;

.field protected removes:Ljava/util/ArrayList;

.field protected sqlStatement:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 85
    const-string v0, "jdbc:odbc:myDB"

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseURL:Ljava/lang/String;

    .line 90
    const-string v0, "me"

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseUser:Ljava/lang/String;

    .line 95
    const-string v0, "mypassword"

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databasePassword:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->sqlStatement:Ljava/lang/String;

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    .line 137
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    if-lt v0, v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lorg/apache/log4j/jdbc/JDBCAppender;->flushBuffer()V

    .line 147
    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/apache/log4j/jdbc/JDBCAppender;->flushBuffer()V

    .line 228
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 234
    return-void

    .line 230
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 231
    .local v0, "e":Ljava/sql/SQLException;
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v2, "Error closing connection"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method protected closeConnection(Ljava/sql/Connection;)V
    .locals 0
    .param p1, "con"    # Ljava/sql/Connection;

    .prologue
    .line 199
    return-void
.end method

.method protected execute(Ljava/lang/String;)V
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "con":Ljava/sql/Connection;
    const/4 v2, 0x0

    .line 175
    .local v2, "stmt":Ljava/sql/Statement;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/jdbc/JDBCAppender;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 178
    invoke-interface {v2, p1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 185
    invoke-virtual {p0, v0}, Lorg/apache/log4j/jdbc/JDBCAppender;->closeConnection(Ljava/sql/Connection;)V

    .line 188
    return-void

    .line 179
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 180
    .local v1, "e":Ljava/sql/SQLException;
    if-eqz v2, :cond_0

    .line 181
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 182
    :cond_0
    throw v1
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 269
    invoke-virtual {p0}, Lorg/apache/log4j/jdbc/JDBCAppender;->close()V

    .line 270
    return-void
.end method

.method public flushBuffer()V
    .locals 7

    .prologue
    .line 245
    iget-object v4, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 246
    iget-object v4, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/spi/LoggingEvent;

    .line 249
    .local v2, "logEvent":Lorg/apache/log4j/spi/LoggingEvent;
    invoke-virtual {p0, v2}, Lorg/apache/log4j/jdbc/JDBCAppender;->getLogStatement(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/apache/log4j/jdbc/JDBCAppender;->execute(Ljava/lang/String;)V

    .line 251
    iget-object v4, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v2    # "logEvent":Lorg/apache/log4j/spi/LoggingEvent;
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 254
    .local v0, "e":Ljava/sql/SQLException;
    iget-object v4, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v5, "Failed to excute sql"

    const/4 v6, 0x2

    invoke-interface {v4, v5, v0, v6}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 260
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_0
    iget-object v4, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 263
    iget-object v4, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 264
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    return v0
.end method

.method protected getConnection()Ljava/sql/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {}, Ljava/sql/DriverManager;->getDrivers()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const-string v0, "sun.jdbc.odbc.JdbcOdbcDriver"

    invoke-virtual {p0, v0}, Lorg/apache/log4j/jdbc/JDBCAppender;->setDriver(Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseURL:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseUser:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databasePassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    .line 216
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    return-object v0
.end method

.method protected getLogStatement(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databasePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->sqlStatement:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseUser:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public setBufferSize(I)V
    .locals 2
    .param p1, "newBufferSize"    # I

    .prologue
    .line 319
    iput p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    .line 320
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 321
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 322
    return-void
.end method

.method public setDriver(Ljava/lang/String;)V
    .locals 4
    .param p1, "driverClass"    # Ljava/lang/String;

    .prologue
    .line 351
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v2, "Failed to load driver"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databasePassword:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setSql(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->sqlStatement:Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lorg/apache/log4j/PatternLayout;

    invoke-direct {v0, p1}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/AppenderSkeleton;->setLayout(Lorg/apache/log4j/Layout;)V

    .line 292
    .end local p0    # "this":Lorg/apache/log4j/jdbc/JDBCAppender;
    :goto_0
    return-void

    .line 290
    .restart local p0    # "this":Lorg/apache/log4j/jdbc/JDBCAppender;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object p0

    .end local p0    # "this":Lorg/apache/log4j/jdbc/JDBCAppender;
    check-cast p0, Lorg/apache/log4j/PatternLayout;

    invoke-virtual {p0, p1}, Lorg/apache/log4j/PatternLayout;->setConversionPattern(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseURL:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseUser:Ljava/lang/String;

    .line 305
    return-void
.end method
