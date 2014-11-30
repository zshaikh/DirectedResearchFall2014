.class public final Lcom/timgroup/statsd/NonBlockingStatsDClient;
.super Ljava/lang/Object;
.source "NonBlockingStatsDClient.java"

# interfaces
.implements Lcom/timgroup/statsd/StatsDClient;


# static fields
.field private static final NO_OP_HANDLER:Lcom/timgroup/statsd/StatsDClientErrorHandler;


# instance fields
.field private final clientSocket:Ljava/net/DatagramSocket;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final handler:Lcom/timgroup/statsd/StatsDClientErrorHandler;

.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/timgroup/statsd/NonBlockingStatsDClient$1;

    invoke-direct {v0}, Lcom/timgroup/statsd/NonBlockingStatsDClient$1;-><init>()V

    sput-object v0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->NO_OP_HANDLER:Lcom/timgroup/statsd/StatsDClientErrorHandler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/timgroup/statsd/StatsDClientException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->NO_OP_HANDLER:Lcom/timgroup/statsd/StatsDClientErrorHandler;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/timgroup/statsd/NonBlockingStatsDClient;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/timgroup/statsd/StatsDClientErrorHandler;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/timgroup/statsd/StatsDClientErrorHandler;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "errorHandler"    # Lcom/timgroup/statsd/StatsDClientErrorHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/timgroup/statsd/StatsDClientException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Lcom/timgroup/statsd/NonBlockingStatsDClient$2;

    invoke-direct {v1, p0}, Lcom/timgroup/statsd/NonBlockingStatsDClient$2;-><init>(Lcom/timgroup/statsd/NonBlockingStatsDClient;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 102
    iput-object p1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->prefix:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->handler:Lcom/timgroup/statsd/StatsDClientErrorHandler;

    .line 106
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->clientSocket:Ljava/net/DatagramSocket;

    .line 107
    iget-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->clientSocket:Ljava/net/DatagramSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-void

    .line 108
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/timgroup/statsd/StatsDClientException;

    const-string v2, "Failed to start StatsD client"

    invoke-direct {v1, v2, v0}, Lcom/timgroup/statsd/StatsDClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/timgroup/statsd/NonBlockingStatsDClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/timgroup/statsd/NonBlockingStatsDClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/timgroup/statsd/NonBlockingStatsDClient;->blockingSend(Ljava/lang/String;)V

    return-void
.end method

.method private blockingSend(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 251
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 252
    .local v1, "sendData":[B
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 253
    .local v2, "sendPacket":Ljava/net/DatagramPacket;
    iget-object v3, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->clientSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1    # "sendData":[B
    .end local v2    # "sendPacket":Ljava/net/DatagramPacket;
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->handler:Lcom/timgroup/statsd/StatsDClientErrorHandler;

    invoke-interface {v3, v0}, Lcom/timgroup/statsd/StatsDClientErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private send(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/timgroup/statsd/NonBlockingStatsDClient$3;

    invoke-direct {v2, p0, p1}, Lcom/timgroup/statsd/NonBlockingStatsDClient$3;-><init>(Lcom/timgroup/statsd/NonBlockingStatsDClient;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->handler:Lcom/timgroup/statsd/StatsDClientErrorHandler;

    invoke-interface {v1, v0}, Lcom/timgroup/statsd/StatsDClientErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public count(Ljava/lang/String;I)V
    .locals 4
    .param p1, "aspect"    # Ljava/lang/String;
    .param p2, "delta"    # I

    .prologue
    .line 145
    const-string v0, "%s.%s:%d|c"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->prefix:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/timgroup/statsd/NonBlockingStatsDClient;->send(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public decrement(Ljava/lang/String;)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/timgroup/statsd/NonBlockingStatsDClient;->decrementCounter(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public decrementCounter(Ljava/lang/String;)V
    .locals 1
    .param p1, "aspect"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/timgroup/statsd/NonBlockingStatsDClient;->count(Ljava/lang/String;I)V

    .line 180
    return-void
.end method

.method public gauge(Ljava/lang/String;I)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/timgroup/statsd/NonBlockingStatsDClient;->recordGaugeValue(Ljava/lang/String;I)V

    .line 211
    return-void
.end method

.method public increment(Ljava/lang/String;)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/timgroup/statsd/NonBlockingStatsDClient;->incrementCounter(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 1
    .param p1, "aspect"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/timgroup/statsd/NonBlockingStatsDClient;->count(Ljava/lang/String;I)V

    .line 159
    return-void
.end method

.method public recordExecutionTime(Ljava/lang/String;I)V
    .locals 4
    .param p1, "aspect"    # Ljava/lang/String;
    .param p2, "timeInMs"    # I

    .prologue
    .line 225
    const-string v0, "%s.%s:%d|ms"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->prefix:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/timgroup/statsd/NonBlockingStatsDClient;->send(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public recordGaugeValue(Ljava/lang/String;I)V
    .locals 4
    .param p1, "aspect"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 202
    const-string v0, "%s.%s:%d|g"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->prefix:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/timgroup/statsd/NonBlockingStatsDClient;->send(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 121
    iget-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->executor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->clientSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->clientSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->handler:Lcom/timgroup/statsd/StatsDClientErrorHandler;

    invoke-interface {v1, v0}, Lcom/timgroup/statsd/StatsDClientErrorHandler;->handle(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    iget-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->clientSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->clientSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->clientSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient;->clientSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    throw v1
.end method

.method public time(Ljava/lang/String;I)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/timgroup/statsd/NonBlockingStatsDClient;->recordExecutionTime(Ljava/lang/String;I)V

    .line 234
    return-void
.end method
