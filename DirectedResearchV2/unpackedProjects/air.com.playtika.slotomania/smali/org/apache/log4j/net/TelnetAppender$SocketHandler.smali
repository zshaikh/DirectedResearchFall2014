.class public Lorg/apache/log4j/net/TelnetAppender$SocketHandler;
.super Ljava/lang/Thread;
.source "TelnetAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/net/TelnetAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SocketHandler"
.end annotation


# instance fields
.field private MAX_CONNECTIONS:I

.field private connections:Ljava/util/Vector;

.field private serverSocket:Ljava/net/ServerSocket;

.field private final this$0:Lorg/apache/log4j/net/TelnetAppender;

.field private writers:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/net/TelnetAppender;I)V
    .locals 2
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->this$0:Lorg/apache/log4j/net/TelnetAppender;

    .line 126
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->writers:Ljava/util/Vector;

    .line 127
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    .line 129
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->MAX_CONNECTIONS:I

    .line 200
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->serverSocket:Ljava/net/ServerSocket;

    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TelnetAppender-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 202
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    goto :goto_0

    .line 145
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :goto_1
    return-void

    .line 146
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->close()V

    .line 133
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 170
    :goto_0
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    :try_start_0
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 173
    .local v1, "newClient":Ljava/net/Socket;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 174
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->MAX_CONNECTIONS:I

    if-ge v3, v4, :cond_1

    .line 175
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 176
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->writers:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 177
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "TelnetAppender v1.0 ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " active connections)\r\n\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v1    # "newClient":Ljava/net/Socket;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    const-string v3, "Encountered error while in SocketHandler loop."

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    :goto_1
    return-void

    .line 181
    .restart local v1    # "newClient":Ljava/net/Socket;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :cond_1
    :try_start_2
    const-string v3, "Too many connections.\r\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 183
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 195
    .end local v1    # "newClient":Ljava/net/Socket;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public send(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 153
    .local v0, "ce":Ljava/util/Enumeration;
    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->writers:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;

    .line 155
    .local v2, "sock":Ljava/net/Socket;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/PrintWriter;

    .line 156
    .local v3, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3}, Ljava/io/PrintWriter;->checkError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->connections:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 160
    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->writers:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v2    # "sock":Ljava/net/Socket;
    .end local v3    # "writer":Ljava/io/PrintWriter;
    :cond_1
    return-void
.end method
