.class public Lcom/android/a/k;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;

.field private final b:Lcom/android/a/j;

.field private final c:Lcom/android/a/b;

.field private final d:Lcom/android/a/w;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/a/j;Lcom/android/a/b;Lcom/android/a/w;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/a/k;->e:Z

    .line 58
    iput-object p1, p0, Lcom/android/a/k;->a:Ljava/util/concurrent/BlockingQueue;

    .line 59
    iput-object p2, p0, Lcom/android/a/k;->b:Lcom/android/a/j;

    .line 60
    iput-object p3, p0, Lcom/android/a/k;->c:Lcom/android/a/b;

    .line 61
    iput-object p4, p0, Lcom/android/a/k;->d:Lcom/android/a/w;

    .line 62
    return-void
.end method

.method private a(Lcom/android/a/p;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/android/a/p;->e()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 79
    :cond_0
    return-void
.end method

.method private a(Lcom/android/a/p;Lcom/android/a/aa;)V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p1, p2}, Lcom/android/a/p;->a(Lcom/android/a/aa;)Lcom/android/a/aa;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/android/a/k;->d:Lcom/android/a/w;

    invoke-interface {v1, p1, v0}, Lcom/android/a/w;->a(Lcom/android/a/p;Lcom/android/a/aa;)V

    .line 146
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/a/k;->e:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/a/k;->interrupt()V

    .line 71
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 83
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 88
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/a/k;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/p;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :try_start_1
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/android/a/p;->a(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/android/a/p;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, "network-discard-cancelled"

    invoke-virtual {v0, v1}, Lcom/android/a/p;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/a/aa; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    invoke-direct {p0, v0, v1}, Lcom/android/a/k;->a(Lcom/android/a/p;Lcom/android/a/aa;)V

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 91
    iget-boolean v0, p0, Lcom/android/a/k;->e:Z

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 107
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/a/k;->a(Lcom/android/a/p;)V

    .line 110
    iget-object v1, p0, Lcom/android/a/k;->b:Lcom/android/a/j;

    invoke-interface {v1, v0}, Lcom/android/a/j;->a(Lcom/android/a/p;)Lcom/android/a/m;

    move-result-object v1

    .line 111
    const-string v2, "network-http-complete"

    invoke-virtual {v0, v2}, Lcom/android/a/p;->a(Ljava/lang/String;)V

    .line 115
    iget-boolean v2, v1, Lcom/android/a/m;->d:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/a/p;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/android/a/p;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/a/aa; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 136
    :catch_2
    move-exception v1

    .line 137
    const-string v2, "Unhandled exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/a/ab;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v2, p0, Lcom/android/a/k;->d:Lcom/android/a/w;

    new-instance v3, Lcom/android/a/aa;

    invoke-direct {v3, v1}, Lcom/android/a/aa;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v0, v3}, Lcom/android/a/w;->a(Lcom/android/a/p;Lcom/android/a/aa;)V

    goto :goto_0

    .line 121
    :cond_2
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/android/a/p;->a(Lcom/android/a/m;)Lcom/android/a/t;

    move-result-object v1

    .line 122
    const-string v2, "network-parse-complete"

    invoke-virtual {v0, v2}, Lcom/android/a/p;->a(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lcom/android/a/p;->r()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/a/t;->b:Lcom/android/a/c;

    if-eqz v2, :cond_3

    .line 127
    iget-object v2, p0, Lcom/android/a/k;->c:Lcom/android/a/b;

    invoke-virtual {v0}, Lcom/android/a/p;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/a/t;->b:Lcom/android/a/c;

    invoke-interface {v2, v3, v4}, Lcom/android/a/b;->a(Ljava/lang/String;Lcom/android/a/c;)V

    .line 128
    const-string v2, "network-cache-written"

    invoke-virtual {v0, v2}, Lcom/android/a/p;->a(Ljava/lang/String;)V

    .line 132
    :cond_3
    invoke-virtual {v0}, Lcom/android/a/p;->u()V

    .line 133
    iget-object v2, p0, Lcom/android/a/k;->d:Lcom/android/a/w;

    invoke-interface {v2, v0, v1}, Lcom/android/a/w;->a(Lcom/android/a/p;Lcom/android/a/t;)V
    :try_end_3
    .catch Lcom/android/a/aa; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
