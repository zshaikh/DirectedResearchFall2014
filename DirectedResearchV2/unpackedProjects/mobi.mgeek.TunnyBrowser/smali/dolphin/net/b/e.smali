.class public Ldolphin/net/b/e;
.super Ljava/lang/Thread;
.source "DNSPrefetchThread.java"


# instance fields
.field a:J

.field b:J

.field private c:Z

.field private volatile d:Z

.field private e:Landroid/content/Context;

.field private f:Ldolphin/net/b/b;

.field private g:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILdolphin/net/b/b;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/net/b/e;->d:Z

    .line 35
    iput-object p1, p0, Ldolphin/net/b/e;->e:Landroid/content/Context;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/net/b/e;->setName(Ljava/lang/String;)V

    .line 37
    iput p2, p0, Ldolphin/net/b/e;->g:I

    .line 38
    iput-object p3, p0, Ldolphin/net/b/e;->f:Ldolphin/net/b/b;

    .line 39
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 57
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 64
    iput-wide v8, p0, Ldolphin/net/b/e;->a:J

    .line 65
    iput-wide v8, p0, Ldolphin/net/b/e;->b:J

    .line 67
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ldolphin/net/b/e;->d:Z

    if-eqz v0, :cond_6

    .line 68
    iget-wide v2, p0, Ldolphin/net/b/e;->a:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ldolphin/net/b/e;->a:J

    .line 73
    :cond_1
    iget-object v0, p0, Ldolphin/net/b/e;->f:Ldolphin/net/b/b;

    invoke-interface {v0}, Ldolphin/net/b/b;->a()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 76
    if-nez v2, :cond_3

    .line 77
    const-string v0, "DNSPrefetchThread"

    const-string v2, "DNSPrefetchThread: Waiting for work"

    invoke-static {v0, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Ldolphin/net/b/e;->f:Ldolphin/net/b/b;

    monitor-enter v2

    .line 79
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ldolphin/net/b/e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    iget-object v0, p0, Ldolphin/net/b/e;->f:Ldolphin/net/b/b;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ldolphin/net/b/e;->c:Z

    .line 85
    iget-wide v3, p0, Ldolphin/net/b/e;->a:J

    cmp-long v0, v3, v8

    if-eqz v0, :cond_2

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Ldolphin/net/b/e;->a:J

    .line 88
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 90
    :cond_3
    const-string v0, "Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DNSPrefetchThread] Resolving new host:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ldolphin/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "DNSPrefetchThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNSPrefetchThread: Resolving new host:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v3, p0, Ldolphin/net/b/e;->f:Ldolphin/net/b/b;

    invoke-interface {v3, v2}, Ldolphin/net/b/b;->a(Lorg/apache/http/HttpHost;)V

    .line 96
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 98
    array-length v0, v3

    if-lez v0, :cond_5

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    array-length v5, v3

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_4

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 101
    :cond_4
    invoke-static {}, Ldolphin/net/b/a;->a()Ldolphin/net/b/a;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ldolphin/net/b/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    :cond_5
    iget-object v0, p0, Ldolphin/net/b/e;->f:Ldolphin/net/b/b;

    invoke-interface {v0, v2}, Ldolphin/net/b/b;->b(Lorg/apache/http/HttpHost;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    .line 109
    :goto_3
    iget-wide v2, p0, Ldolphin/net/b/e;->a:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_0

    .line 110
    iget-wide v2, p0, Ldolphin/net/b/e;->a:J

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Ldolphin/net/b/e;->a:J

    .line 112
    iget-wide v4, p0, Ldolphin/net/b/e;->b:J

    iget-wide v6, p0, Ldolphin/net/b/e;->a:J

    sub-long v2, v6, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Ldolphin/net/b/e;->b:J

    goto/16 :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 106
    const-string v3, "Network"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DNSPrefetchThread] Resolving new host:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "[FAILED]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ldolphin/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 117
    :cond_6
    return-void

    .line 82
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/net/b/e;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "w"

    .line 121
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldolphin/net/b/e;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 120
    :cond_0
    :try_start_1
    const-string v0, "a"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
