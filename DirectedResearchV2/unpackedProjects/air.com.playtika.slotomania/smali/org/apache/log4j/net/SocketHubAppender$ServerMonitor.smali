.class Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;
.super Ljava/lang/Object;
.source "SocketHubAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/net/SocketHubAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerMonitor"
.end annotation


# instance fields
.field private keepRunning:Z

.field private monitorThread:Ljava/lang/Thread;

.field private oosList:Ljava/util/Vector;

.field private port:I

.field private final this$0:Lorg/apache/log4j/net/SocketHubAppender;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/net/SocketHubAppender;ILjava/util/Vector;)V
    .locals 2
    .param p2, "_port"    # I
    .param p3, "_oosList"    # Ljava/util/Vector;

    .prologue
    const/4 v1, 0x1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    .line 288
    iput p2, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->port:I

    .line 289
    iput-object p3, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->oosList:Ljava/util/Vector;

    .line 290
    iput-boolean v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    .line 291
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    .line 292
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 293
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 294
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v8, "exception setting timeout, shutting down server socket."

    .line 323
    const/4 v3, 0x0

    .line 325
    .local v3, "serverSocket":Ljava/net/ServerSocket;
    :try_start_0
    new-instance v4, Ljava/net/ServerSocket;

    iget v6, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->port:I

    invoke-direct {v4, v6}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    .end local v3    # "serverSocket":Ljava/net/ServerSocket;
    .local v4, "serverSocket":Ljava/net/ServerSocket;
    const/16 v6, 0x3e8

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 336
    const/16 v6, 0x3e8

    :try_start_2
    invoke-virtual {v4, v6}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    :cond_0
    :goto_0
    :try_start_3
    iget-boolean v6, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_1

    .line 344
    const/4 v5, 0x0

    .line 346
    .local v5, "socket":Ljava/net/Socket;
    :try_start_4
    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 360
    :goto_1
    if-eqz v5, :cond_0

    .line 362
    :try_start_5
    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 363
    .local v2, "remoteAddress":Ljava/net/InetAddress;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "accepting connection from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 367
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 370
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    iget-object v6, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->oosList:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 372
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .end local v2    # "remoteAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 373
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v6, "exception creating output stream on socket."

    invoke-static {v6, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 380
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v6

    .line 381
    :try_start_7
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 385
    :goto_2
    throw v6

    .line 328
    .end local v4    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v3    # "serverSocket":Ljava/net/ServerSocket;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v6, "exception setting timeout, shutting down server socket."

    invoke-static {v8, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    iput-boolean v7, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 338
    .end local v3    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v4    # "serverSocket":Ljava/net/ServerSocket;
    :catch_2
    move-exception v0

    .line 339
    .local v0, "e":Ljava/net/SocketException;
    :try_start_8
    const-string v6, "exception setting timeout, shutting down server socket."

    invoke-static {v6, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 381
    :try_start_9
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :goto_5
    move-object v3, v4

    .line 385
    .end local v4    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v3    # "serverSocket":Ljava/net/ServerSocket;
    goto :goto_4

    .line 351
    .end local v0    # "e":Ljava/net/SocketException;
    .end local v3    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v4    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v5    # "socket":Ljava/net/Socket;
    :catch_3
    move-exception v0

    .line 352
    .restart local v0    # "e":Ljava/net/SocketException;
    :try_start_a
    const-string v6, "exception accepting socket, shutting down server socket."

    invoke-static {v6, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    goto :goto_1

    .line 355
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_4
    move-exception v0

    .line 356
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "exception accepting socket."

    invoke-static {v6, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 381
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "socket":Ljava/net/Socket;
    :cond_1
    :try_start_b
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :goto_6
    move-object v3, v4

    .line 387
    .end local v4    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v3    # "serverSocket":Ljava/net/ServerSocket;
    goto :goto_4

    .line 383
    .end local v3    # "serverSocket":Ljava/net/ServerSocket;
    .local v0, "e":Ljava/net/SocketException;
    .restart local v4    # "serverSocket":Ljava/net/ServerSocket;
    :catch_5
    move-exception v6

    goto :goto_5

    .line 348
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v5    # "socket":Ljava/net/Socket;
    :catch_6
    move-exception v6

    goto :goto_1

    .line 383
    .end local v5    # "socket":Ljava/net/Socket;
    :catch_7
    move-exception v6

    goto :goto_6

    :catch_8
    move-exception v7

    goto :goto_2

    .line 328
    :catch_9
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v3    # "serverSocket":Ljava/net/ServerSocket;
    goto :goto_3
.end method

.method public declared-synchronized stopMonitor()V
    .locals 1

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "server monitor thread shutting down"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    .line 314
    const-string v0, "server monitor thread shut down"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    :cond_0
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 308
    :catch_0
    move-exception v0

    goto :goto_0
.end method
