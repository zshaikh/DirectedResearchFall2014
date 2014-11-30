.class public Ldolphin/net/http/j;
.super Ljava/lang/Thread;
.source "ConnectionPreconnectThread.java"


# instance fields
.field a:J

.field b:J

.field private c:Z

.field private volatile d:Z

.field private e:Landroid/content/Context;

.field private f:Ldolphin/net/http/g;

.field private g:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILdolphin/net/http/g;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/net/http/j;->d:Z

    .line 39
    iput-object p1, p0, Ldolphin/net/http/j;->e:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/net/http/j;->setName(Ljava/lang/String;)V

    .line 41
    iput p2, p0, Ldolphin/net/http/j;->g:I

    .line 42
    iput-object p3, p0, Ldolphin/net/http/j;->f:Ldolphin/net/http/g;

    .line 43
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 61
    const-string v0, "Http"

    const-string v1, "[ConnectionPreconnectThread::run]"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 70
    iput-wide v6, p0, Ldolphin/net/http/j;->a:J

    .line 71
    iput-wide v6, p0, Ldolphin/net/http/j;->b:J

    .line 73
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ldolphin/net/http/j;->d:Z

    if-eqz v0, :cond_6

    .line 74
    iget-wide v0, p0, Ldolphin/net/http/j;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldolphin/net/http/j;->a:J

    .line 81
    :cond_1
    iget-object v0, p0, Ldolphin/net/http/j;->f:Ldolphin/net/http/g;

    invoke-interface {v0}, Ldolphin/net/http/g;->a()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 84
    if-nez v1, :cond_3

    .line 85
    iget-object v1, p0, Ldolphin/net/http/j;->f:Ldolphin/net/http/g;

    monitor-enter v1

    .line 87
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ldolphin/net/http/j;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    iget-object v0, p0, Ldolphin/net/http/j;->f:Ldolphin/net/http/g;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ldolphin/net/http/j;->c:Z

    .line 93
    iget-wide v2, p0, Ldolphin/net/http/j;->a:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ldolphin/net/http/j;->a:J

    .line 96
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 99
    :cond_3
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string v0, "Http"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ConnectionPreconnectThread::run] preconnect host:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Ldolphin/net/http/j;->f:Ldolphin/net/http/g;

    invoke-interface {v0, v1}, Ldolphin/net/http/g;->a(Lorg/apache/http/HttpHost;)V

    .line 106
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    iget-object v0, p0, Ldolphin/net/http/j;->e:Landroid/content/Context;

    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v3

    invoke-virtual {v3}, Ldolphin/net/http/e;->b()Lorg/apache/http/HttpHost;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ldolphin/net/http/d;->a(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;)Ldolphin/net/http/c;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v8}, Ldolphin/net/http/c;->a(Landroid/net/http/SslCertificate;)V

    .line 111
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v0, v3, v4, v5}, Ldolphin/net/http/c;->a([Lorg/apache/http/Header;Ldolphin/net/http/l;I)Ldolphin/net/http/a;

    move-result-object v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    invoke-static {}, Ldolphin/net/a/a;->a()Ldolphin/net/a/a;

    move-result-object v4

    invoke-virtual {v4}, Ldolphin/net/a/a;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ldolphin/net/http/a;->setSocketTimeout(I)V

    .line 114
    invoke-virtual {v0, v3}, Ldolphin/net/http/c;->a(Ldolphin/net/http/a;)V

    .line 115
    const-string v4, "http.connection"

    invoke-virtual {v0, v4, v3}, Ldolphin/net/http/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    :cond_4
    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Ldolphin/net/http/e;->a(Ldolphin/net/http/c;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 123
    :cond_5
    :goto_2
    iget-object v0, p0, Ldolphin/net/http/j;->f:Ldolphin/net/http/g;

    invoke-interface {v0, v1}, Ldolphin/net/http/g;->b(Lorg/apache/http/HttpHost;)V

    .line 125
    iget-wide v0, p0, Ldolphin/net/http/j;->a:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 126
    iget-wide v0, p0, Ldolphin/net/http/j;->a:J

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ldolphin/net/http/j;->a:J

    .line 128
    iget-wide v2, p0, Ldolphin/net/http/j;->b:J

    iget-wide v4, p0, Ldolphin/net/http/j;->a:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldolphin/net/http/j;->b:J

    goto/16 :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string v3, "Http"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ConnectionPreconnectThread::run] exception when pre-connect host:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 133
    :cond_6
    return-void

    .line 90
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/net/http/j;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "w"

    .line 137
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldolphin/net/http/j;->g:I

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

    .line 136
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
