.class Lorg/apache/log4j/varia/HUPNode;
.super Ljava/lang/Object;
.source "ExternallyRolledFileAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field dis:Ljava/io/DataInputStream;

.field dos:Ljava/io/DataOutputStream;

.field er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lorg/apache/log4j/varia/ExternallyRolledFileAppender;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "er"    # Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lorg/apache/log4j/varia/HUPNode;->socket:Ljava/net/Socket;

    .line 145
    iput-object p2, p0, Lorg/apache/log4j/varia/HUPNode;->er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

    .line 147
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/log4j/varia/HUPNode;->dis:Ljava/io/DataInputStream;

    .line 148
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/log4j/varia/HUPNode;->dos:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 157
    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/varia/HUPNode;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "line":Ljava/lang/String;
    const-string v2, "Got external roll over signal."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 159
    const-string v2, "RollOver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lorg/apache/log4j/varia/HUPNode;->er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    iget-object v3, p0, Lorg/apache/log4j/varia/HUPNode;->er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

    invoke-virtual {v3}, Lorg/apache/log4j/RollingFileAppender;->rollOver()V

    .line 162
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    iget-object v2, p0, Lorg/apache/log4j/varia/HUPNode;->dos:Ljava/io/DataOutputStream;

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 168
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/varia/HUPNode;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    .end local v1    # "line":Ljava/lang/String;
    :goto_1
    return-void

    .line 162
    .restart local v1    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 170
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Unexpected exception. Exiting HUPNode."

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "line":Ljava/lang/String;
    :cond_0
    :try_start_5
    iget-object v2, p0, Lorg/apache/log4j/varia/HUPNode;->dos:Ljava/io/DataOutputStream;

    const-string v3, "Expecting [RollOver] string."

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method
