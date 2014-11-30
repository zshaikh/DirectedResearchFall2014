.class Ldolphin/net/c/i;
.super Ljava/lang/Thread;
.source "RequestWorkerThread.java"


# instance fields
.field a:J

.field b:J

.field private c:Z

.field private volatile d:Z

.field private e:Landroid/content/Context;

.field private f:Ldolphin/net/c/h;

.field private g:Ldolphin/net/c/b;

.field private h:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILdolphin/net/c/b;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/net/c/i;->d:Z

    .line 54
    iput-object p1, p0, Ldolphin/net/c/i;->e:Landroid/content/Context;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/net/c/i;->setName(Ljava/lang/String;)V

    .line 56
    iput p2, p0, Ldolphin/net/c/i;->h:I

    .line 57
    iput-object p3, p0, Ldolphin/net/c/i;->g:Ldolphin/net/c/b;

    .line 58
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Ldolphin/net/c/i;->g:Ldolphin/net/c/b;

    monitor-enter v1

    .line 62
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ldolphin/net/c/i;->d:Z

    .line 63
    iget-object v0, p0, Ldolphin/net/c/i;->g:Ldolphin/net/c/b;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Ldolphin/net/c/h;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ldolphin/net/c/i;->f:Ldolphin/net/c/h;

    return-object v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    .line 75
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 83
    iput-wide v6, p0, Ldolphin/net/c/i;->a:J

    .line 84
    iput-wide v6, p0, Ldolphin/net/c/i;->b:J

    .line 86
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ldolphin/net/c/i;->d:Z

    if-eqz v0, :cond_6

    .line 87
    iget-wide v0, p0, Ldolphin/net/c/i;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldolphin/net/c/i;->a:J

    .line 94
    :cond_1
    iget-object v0, p0, Ldolphin/net/c/i;->g:Ldolphin/net/c/b;

    invoke-interface {v0}, Ldolphin/net/c/b;->a()Ldolphin/net/c/a;

    move-result-object v0

    .line 97
    if-nez v0, :cond_3

    .line 98
    iget-object v1, p0, Ldolphin/net/c/i;->g:Ldolphin/net/c/b;

    monitor-enter v1

    .line 101
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ldolphin/net/c/i;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    iget-object v0, p0, Ldolphin/net/c/i;->g:Ldolphin/net/c/b;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ldolphin/net/c/i;->c:Z

    .line 107
    iget-wide v2, p0, Ldolphin/net/c/i;->a:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ldolphin/net/c/i;->a:J

    .line 110
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 115
    :cond_3
    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/c/i;->e:Landroid/content/Context;

    iget-object v3, v0, Ldolphin/net/c/a;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v1, v2, v3}, Ldolphin/net/http/e;->a(Landroid/content/Context;Lorg/apache/http/HttpHost;)Ldolphin/net/http/c;

    move-result-object v1

    .line 116
    new-instance v2, Ldolphin/net/c/h;

    iget-object v3, p0, Ldolphin/net/c/i;->e:Landroid/content/Context;

    iget-object v4, p0, Ldolphin/net/c/i;->g:Ldolphin/net/c/b;

    invoke-direct {v2, v3, v1, v4}, Ldolphin/net/c/h;-><init>(Landroid/content/Context;Ldolphin/net/http/c;Ldolphin/net/c/b;)V

    iput-object v2, p0, Ldolphin/net/c/i;->f:Ldolphin/net/c/h;

    .line 117
    iget-object v2, p0, Ldolphin/net/c/i;->f:Ldolphin/net/c/h;

    invoke-virtual {v2, v0}, Ldolphin/net/c/h;->a(Ldolphin/net/c/a;)V

    .line 118
    invoke-virtual {v1}, Ldolphin/net/http/c;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldolphin/net/http/e;->a(Ldolphin/net/http/c;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 120
    invoke-virtual {v1}, Ldolphin/net/http/c;->i()V

    .line 125
    :cond_4
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/net/c/i;->f:Ldolphin/net/c/h;

    .line 127
    iget-wide v0, p0, Ldolphin/net/c/i;->a:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 128
    iget-wide v0, p0, Ldolphin/net/c/i;->a:J

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ldolphin/net/c/i;->a:J

    .line 130
    iget-wide v2, p0, Ldolphin/net/c/i;->b:J

    iget-wide v4, p0, Ldolphin/net/c/i;->a:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldolphin/net/c/i;->b:J

    goto/16 :goto_0

    .line 123
    :cond_5
    invoke-virtual {v1}, Ldolphin/net/http/c;->i()V

    goto :goto_2

    .line 135
    :cond_6
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/c/i;->f:Ldolphin/net/c/h;

    if-nez v0, :cond_0

    const-string v0, ""

    move-object v1, v0

    .line 139
    :goto_0
    iget-boolean v0, p0, Ldolphin/net/c/i;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "w"

    .line 140
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ldolphin/net/c/i;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 138
    :cond_0
    :try_start_1
    iget-object v0, p0, Ldolphin/net/c/i;->f:Ldolphin/net/c/h;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 139
    :cond_1
    const-string v0, "a"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
