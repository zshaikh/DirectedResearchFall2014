.class public Lorg/apache/log4j/net/SocketNode;
.super Ljava/lang/Object;
.source "SocketNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static class$org$apache$log4j$net$SocketNode:Ljava/lang/Class;

.field static logger:Lorg/apache/log4j/Logger;


# instance fields
.field hierarchy:Lorg/apache/log4j/spi/LoggerRepository;

.field ois:Ljava/io/ObjectInputStream;

.field socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/apache/log4j/net/SocketNode;->class$org$apache$log4j$net$SocketNode:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.SocketNode"

    invoke-static {v0}, Lorg/apache/log4j/net/SocketNode;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketNode;->class$org$apache$log4j$net$SocketNode:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/net/SocketNode;->class$org$apache$log4j$net$SocketNode:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/Socket;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    .line 53
    iput-object p2, p0, Lorg/apache/log4j/net/SocketNode;->hierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    .line 55
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not open ObjectInputStream to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-string v6, "Could not close connection."

    .line 74
    :try_start_0
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_3

    .line 77
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/LoggingEvent;

    .line 79
    .local v1, "event":Lorg/apache/log4j/spi/LoggingEvent;
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->hierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-virtual {v1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v2

    .line 82
    .local v2, "remoteLogger":Lorg/apache/log4j/Logger;
    invoke-virtual {v1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v2, v1}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 88
    .end local v1    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    .end local v2    # "remoteLogger":Lorg/apache/log4j/Logger;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 89
    .local v0, "e":Ljava/io/EOFException;
    :try_start_1
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Caught java.io.EOFException closing conneciton."

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_1

    .line 100
    :try_start_2
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 105
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_2

    .line 107
    :try_start_3
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f

    .line 112
    :cond_2
    :goto_2
    return-void

    .line 98
    :cond_3
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_4

    .line 100
    :try_start_4
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 105
    :cond_4
    :goto_3
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_2

    .line 107
    :try_start_5
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 108
    :catch_1
    move-exception v3

    goto :goto_2

    .line 101
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Could not close connection."

    invoke-virtual {v3, v6, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 101
    .local v0, "e":Ljava/io/EOFException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Could not close connection."

    invoke-virtual {v3, v6, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    move-object v0, v3

    .line 91
    .local v0, "e":Ljava/net/SocketException;
    :try_start_6
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Caught java.net.SocketException closing conneciton."

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_5

    .line 100
    :try_start_7
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 105
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_5
    :goto_4
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_2

    .line 107
    :try_start_8
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    .line 108
    :catch_5
    move-exception v3

    goto :goto_2

    .line 101
    .restart local v0    # "e":Ljava/net/SocketException;
    :catch_6
    move-exception v3

    move-object v0, v3

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Could not close connection."

    invoke-virtual {v3, v6, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v3

    move-object v0, v3

    .line 93
    .local v0, "e":Ljava/io/IOException;
    :try_start_9
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Caught java.io.IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 94
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Closing connection."

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 98
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_6

    .line 100
    :try_start_a
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_2

    .line 107
    :try_start_b
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_2

    .line 108
    :catch_8
    move-exception v3

    goto/16 :goto_2

    .line 101
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    move-object v0, v3

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Could not close connection."

    invoke-virtual {v3, v6, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v3

    move-object v0, v3

    .line 96
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_c
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Unexpected exception. Closing conneciton."

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 98
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_7

    .line 100
    :try_start_d
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 105
    :cond_7
    :goto_6
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_2

    .line 107
    :try_start_e
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    goto/16 :goto_2

    .line 108
    :catch_b
    move-exception v3

    goto/16 :goto_2

    .line 101
    :catch_c
    move-exception v3

    move-object v0, v3

    .line 102
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Could not close connection."

    invoke-virtual {v3, v6, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    if-eqz v4, :cond_8

    .line 100
    :try_start_f
    iget-object v4, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 105
    :cond_8
    :goto_7
    iget-object v4, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_9

    .line 107
    :try_start_10
    iget-object v4, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 109
    :cond_9
    :goto_8
    throw v3

    .line 101
    :catch_d
    move-exception v4

    move-object v0, v4

    .line 102
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v5, "Could not close connection."

    invoke-virtual {v4, v6, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v4

    goto :goto_8

    :catch_f
    move-exception v3

    goto/16 :goto_2
.end method
