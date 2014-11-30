.class final Lcom/a/a/a/f;
.super Ljava/lang/Thread;
.source "HttpRequester.java"


# instance fields
.field private final a:Lorg/apache/http/conn/ClientConnectionManager;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/a/a/a/f;->a:Lorg/apache/http/conn/ClientConnectionManager;

    .line 107
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/f;->b:Z

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 112
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/a/f;->b:Z

    if-nez v0, :cond_0

    .line 113
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 115
    iget-object v0, p0, Lcom/a/a/a/f;->a:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 116
    iget-object v0, p0, Lcom/a/a/a/f;->a:Lorg/apache/http/conn/ClientConnectionManager;

    const-wide/16 v1, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 118
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method
