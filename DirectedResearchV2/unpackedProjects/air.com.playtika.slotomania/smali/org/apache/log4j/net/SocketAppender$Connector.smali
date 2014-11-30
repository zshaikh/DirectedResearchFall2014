.class Lorg/apache/log4j/net/SocketAppender$Connector;
.super Ljava/lang/Thread;
.source "SocketAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/net/SocketAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connector"
.end annotation


# instance fields
.field interrupted:Z

.field private final this$0:Lorg/apache/log4j/net/SocketAppender;


# direct methods
.method constructor <init>(Lorg/apache/log4j/net/SocketAppender;)V
    .locals 1

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->interrupted:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 395
    :goto_0
    iget-boolean v2, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->interrupted:Z

    if-nez v2, :cond_0

    .line 397
    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget v2, v2, Lorg/apache/log4j/net/SocketAppender;->reconnectionDelay:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 398
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Attempting connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget-object v3, v3, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 399
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget-object v2, v2, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    iget-object v3, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget v3, v3, Lorg/apache/log4j/net/SocketAppender;->port:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 400
    .local v1, "socket":Ljava/net/Socket;
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 401
    :try_start_1
    iget-object v2, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, v2, Lorg/apache/log4j/net/SocketAppender;->oos:Ljava/io/ObjectOutputStream;

    .line 402
    iget-object v2, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/log4j/net/SocketAppender;->access$002(Lorg/apache/log4j/net/SocketAppender;Lorg/apache/log4j/net/SocketAppender$Connector;)Lorg/apache/log4j/net/SocketAppender$Connector;

    .line 403
    const-string v2, "Connection established. Exiting connector thread."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 404
    monitor-exit p0

    .line 418
    .end local v1    # "socket":Ljava/net/Socket;
    :cond_0
    :goto_1
    return-void

    .line 405
    .restart local v1    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 406
    .end local v1    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 407
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Connector interrupted. Leaving loop."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 409
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 410
    .local v0, "e":Ljava/net/ConnectException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Remote host "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget-object v3, v3, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " refused connection."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    .end local v0    # "e":Ljava/net/ConnectException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 413
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget-object v3, v3, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ". Exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
