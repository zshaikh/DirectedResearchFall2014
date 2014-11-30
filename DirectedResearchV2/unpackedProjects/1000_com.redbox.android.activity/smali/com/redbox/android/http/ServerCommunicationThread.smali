.class public Lcom/redbox/android/http/ServerCommunicationThread;
.super Ljava/lang/Thread;
.source "ServerCommunicationThread.java"


# instance fields
.field private lock:Ljava/lang/Object;

.field private mHandler:Lcom/redbox/android/http/ServerResponseHandler;

.field private mMethod:Lorg/apache/http/client/methods/HttpGet;

.field protected volatile mStopped:Z

.field private mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/redbox/android/http/ServerResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/redbox/android/http/ServerResponseHandler;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbox/android/http/ServerCommunicationThread;->mMethod:Lorg/apache/http/client/methods/HttpGet;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/http/ServerCommunicationThread;->mStopped:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/http/ServerCommunicationThread;->lock:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/redbox/android/http/ServerCommunicationThread;->mURL:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/redbox/android/http/ServerCommunicationThread;->mHandler:Lcom/redbox/android/http/ServerResponseHandler;

    .line 49
    return-void
.end method

.method private getClient()Lorg/apache/http/client/HttpClient;
    .locals 7

    .prologue
    .line 53
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 60
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 61
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    .line 62
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 61
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 64
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 67
    .local v0, "cm":Lorg/apache/http/impl/conn/SingleClientConnManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v3
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 71
    const-string v15, "Connecting..."

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/redbox/android/http/ServerCommunicationThread;->getClient()Lorg/apache/http/client/HttpClient;

    move-result-object v5

    .line 77
    .local v5, "cli":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mURL:Ljava/lang/String;

    move-object v15, v0

    invoke-direct {v11, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .local v11, "method":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mStopped:Z

    move v15, v0

    if-eqz v15, :cond_0

    .line 174
    .end local v11    # "method":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v15

    move-object v6, v15

    .line 79
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mHandler:Lcom/redbox/android/http/ServerResponseHandler;

    move-object v15, v0

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/redbox/android/http/ServerResponseHandler;->sendError(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v11    # "method":Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->lock:Ljava/lang/Object;

    move-object v15, v0

    monitor-enter v15

    .line 92
    :try_start_1
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/http/ServerCommunicationThread;->mMethod:Lorg/apache/http/client/methods/HttpGet;

    .line 91
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    const/4 v13, 0x0

    .line 96
    .local v13, "resp":Lorg/apache/http/HttpResponse;
    const/4 v7, 0x0

    .line 97
    .local v7, "ent":Lorg/apache/http/HttpEntity;
    const/4 v8, 0x0

    .line 115
    .local v8, "in":Ljava/io/InputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mMethod:Lorg/apache/http/client/methods/HttpGet;

    move-object v15, v0

    invoke-interface {v5, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 117
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mStopped:Z

    move v15, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v15, :cond_3

    .line 156
    if-eqz v8, :cond_1

    .line 158
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 162
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->lock:Ljava/lang/Object;

    move-object v15, v0

    monitor-enter v15

    .line 163
    const/16 v16, 0x0

    :try_start_4
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/http/ServerCommunicationThread;->mMethod:Lorg/apache/http/client/methods/HttpGet;

    .line 162
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 167
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 169
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mStopped:Z

    move v15, v0

    if-nez v15, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mHandler:Lcom/redbox/android/http/ServerResponseHandler;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/redbox/android/http/ServerResponseHandler;->sendFinished()V

    .line 172
    :cond_2
    const-string v15, "Exiting!"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v7    # "ent":Lorg/apache/http/HttpEntity;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v13    # "resp":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v16

    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v16

    .line 162
    .restart local v7    # "ent":Lorg/apache/http/HttpEntity;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v13    # "resp":Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v16

    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v16

    .line 120
    :cond_3
    :try_start_7
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    .line 122
    .local v14, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 123
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "GET not OK: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    :cond_4
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 127
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    .local v9, "len":J
    const-wide/16 v15, 0x0

    cmp-long v15, v9, v15

    if-ltz v15, :cond_5

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mHandler:Lcom/redbox/android/http/ServerResponseHandler;

    move-object v15, v0

    invoke-virtual {v15, v9, v10}, Lcom/redbox/android/http/ServerResponseHandler;->sendSetLength(J)V

    .line 130
    :cond_5
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 132
    const/16 v15, 0x800

    new-array v2, v15, [B

    .line 134
    .local v2, "b":[B
    const-wide/16 v3, 0x0

    .line 142
    .local v3, "bytes":J
    :goto_2
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v12

    .local v12, "n":I
    if-gez v12, :cond_9

    .line 156
    .end local v2    # "b":[B
    .end local v3    # "bytes":J
    .end local v9    # "len":J
    .end local v12    # "n":I
    :cond_6
    if-eqz v8, :cond_7

    .line 158
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 162
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->lock:Ljava/lang/Object;

    move-object v15, v0

    monitor-enter v15

    .line 163
    const/16 v16, 0x0

    :try_start_9
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/http/ServerCommunicationThread;->mMethod:Lorg/apache/http/client/methods/HttpGet;

    .line 162
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 167
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 169
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mStopped:Z

    move v15, v0

    if-nez v15, :cond_8

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mHandler:Lcom/redbox/android/http/ServerResponseHandler;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/redbox/android/http/ServerResponseHandler;->sendFinished()V

    .line 172
    :cond_8
    const-string v15, "Exiting!"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    .restart local v2    # "b":[B
    .restart local v3    # "bytes":J
    .restart local v9    # "len":J
    .restart local v12    # "n":I
    :cond_9
    int-to-long v15, v12

    add-long/2addr v3, v15

    .line 144
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mHandler:Lcom/redbox/android/http/ServerResponseHandler;

    move-object v15, v0

    invoke-virtual {v15, v3, v4}, Lcom/redbox/android/http/ServerResponseHandler;->sendOnRecv(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    .line 147
    .end local v2    # "b":[B
    .end local v3    # "bytes":J
    .end local v9    # "len":J
    .end local v12    # "n":I
    .end local v14    # "status":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v15

    move-object v6, v15

    .line 153
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mStopped:Z

    move v15, v0

    if-nez v15, :cond_a

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mHandler:Lcom/redbox/android/http/ServerResponseHandler;

    move-object v15, v0

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/redbox/android/http/ServerResponseHandler;->sendError(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 156
    :cond_a
    if-eqz v8, :cond_b

    .line 158
    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 162
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->lock:Ljava/lang/Object;

    move-object v15, v0

    monitor-enter v15

    .line 163
    const/16 v16, 0x0

    :try_start_d
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/http/ServerCommunicationThread;->mMethod:Lorg/apache/http/client/methods/HttpGet;

    .line 162
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 167
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 169
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mStopped:Z

    move v15, v0

    if-nez v15, :cond_c

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mHandler:Lcom/redbox/android/http/ServerResponseHandler;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/redbox/android/http/ServerResponseHandler;->sendFinished()V

    .line 172
    :cond_c
    const-string v15, "Exiting!"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :catchall_2
    move-exception v16

    :try_start_e
    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v16

    .line 155
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v15

    .line 156
    if-eqz v8, :cond_d

    .line 158
    :try_start_f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 162
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->lock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 163
    const/16 v17, 0x0

    :try_start_10
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/http/ServerCommunicationThread;->mMethod:Lorg/apache/http/client/methods/HttpGet;

    .line 162
    monitor-exit v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 167
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 169
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mStopped:Z

    move/from16 v16, v0

    if-nez v16, :cond_e

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/ServerCommunicationThread;->mHandler:Lcom/redbox/android/http/ServerResponseHandler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/redbox/android/http/ServerResponseHandler;->sendFinished()V

    .line 172
    :cond_e
    const-string v16, "Exiting!"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    throw v15

    .line 162
    :catchall_4
    move-exception v15

    :try_start_11
    monitor-exit v16
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw v15

    .restart local v14    # "status":Lorg/apache/http/StatusLine;
    :catchall_5
    move-exception v16

    :try_start_12
    monitor-exit v15
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v16

    .line 159
    .end local v14    # "status":Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v15

    goto/16 :goto_1

    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v15

    goto :goto_4

    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v16

    goto :goto_5

    .restart local v14    # "status":Lorg/apache/http/StatusLine;
    :catch_5
    move-exception v15

    goto/16 :goto_3
.end method

.method public stopDownload()V
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/redbox/android/http/ServerCommunicationThread;->mStopped:Z

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/redbox/android/http/ServerCommunicationThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "Stopping download..."

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/http/ServerCommunicationThread;->mStopped:Z

    .line 208
    invoke-virtual {p0}, Lcom/redbox/android/http/ServerCommunicationThread;->interrupt()V

    .line 214
    iget-object v0, p0, Lcom/redbox/android/http/ServerCommunicationThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/redbox/android/http/ServerCommunicationThread;->mMethod:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/redbox/android/http/ServerCommunicationThread;->mMethod:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 214
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v0, p0, Lcom/redbox/android/http/ServerCommunicationThread;->mHandler:Lcom/redbox/android/http/ServerResponseHandler;

    invoke-virtual {v0}, Lcom/redbox/android/http/ServerResponseHandler;->sendAborted()V

    .line 228
    const-string v0, "Download stopped."

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
