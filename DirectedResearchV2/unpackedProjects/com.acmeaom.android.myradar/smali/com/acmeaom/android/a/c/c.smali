.class public Lcom/acmeaom/android/a/c/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final a:Lcom/acmeaom/android/a/c/c;

.field private static final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private final d:Landroid/os/Handler;

.field private final e:I

.field private final f:J

.field private final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v2, 0xa

    const/4 v1, 0x4

    .line 23
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/acmeaom/android/a/c/e;

    const-string v8, "GlobalDispatch"

    invoke-direct {v7, v8, v9}, Lcom/acmeaom/android/a/c/e;-><init>(Ljava/lang/String;Lcom/acmeaom/android/a/c/d;)V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/acmeaom/android/a/c/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 28
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/acmeaom/android/a/c/e;

    const-string v3, "ScheduledGlobalDispatch"

    invoke-direct {v2, v3, v9}, Lcom/acmeaom/android/a/c/e;-><init>(Ljava/lang/String;Lcom/acmeaom/android/a/c/d;)V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/acmeaom/android/a/c/c;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 31
    new-instance v0, Lcom/acmeaom/android/a/c/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/acmeaom/android/a/c/c;-><init>(Landroid/os/Looper;IJ)V

    sput-object v0, Lcom/acmeaom/android/a/c/c;->a:Lcom/acmeaom/android/a/c/c;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/acmeaom/android/a/c/c;->e:I

    .line 135
    iput-wide p2, p0, Lcom/acmeaom/android/a/c/c;->f:J

    .line 136
    iput-object v0, p0, Lcom/acmeaom/android/a/c/c;->g:Landroid/os/Handler;

    .line 137
    iput-object v0, p0, Lcom/acmeaom/android/a/c/c;->d:Landroid/os/Handler;

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;IJ)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p2, p0, Lcom/acmeaom/android/a/c/c;->e:I

    .line 84
    iput-wide p3, p0, Lcom/acmeaom/android/a/c/c;->f:J

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/c/c;->g:Landroid/os/Handler;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/a/c/c;->d:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v3, p0, Lcom/acmeaom/android/a/c/c;->e:I

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/acmeaom/android/a/c/c;->f:J

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/a/c/c;->g:Landroid/os/Handler;

    .line 100
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/os/Looper;

    .line 101
    new-instance v0, Lcom/acmeaom/android/a/c/d;

    invoke-direct {v0, p0, v1}, Lcom/acmeaom/android/a/c/d;-><init>(Lcom/acmeaom/android/a/c/c;[Landroid/os/Looper;)V

    .line 111
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v2, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 115
    monitor-enter v1

    .line 116
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 118
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    :try_start_2
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    new-instance v0, Landroid/os/Handler;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/c/c;->d:Landroid/os/Handler;

    .line 125
    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/c/j;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    const-wide v3, 0x412e848000000000L

    .line 164
    iget-object v0, p0, Lcom/acmeaom/android/a/c/c;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/acmeaom/android/a/c/c;->g:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/acmeaom/android/a/c/j;->a()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    double-to-long v1, v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/a/c/c;->d:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p1}, Lcom/acmeaom/android/a/c/j;->a()J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v3

    double-to-long v0, v0

    .line 168
    iget-object v2, p0, Lcom/acmeaom/android/a/c/c;->d:Landroid/os/Handler;

    invoke-virtual {v2, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 170
    :cond_2
    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/acmeaom/android/a/c/j;->a()J

    move-result-wide v0

    .line 172
    sget-object v2, Lcom/acmeaom/android/a/c/c;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/acmeaom/android/a/c/f;

    iget v4, p0, Lcom/acmeaom/android/a/c/c;->e:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, p2, v5}, Lcom/acmeaom/android/a/c/f;-><init>(ILjava/lang/Runnable;Lcom/acmeaom/android/a/c/d;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/acmeaom/android/a/c/c;->a(Ljava/lang/Runnable;I)V

    .line 161
    return-void
.end method

.method public a(Ljava/lang/Runnable;I)V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/acmeaom/android/a/c/c;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/acmeaom/android/a/c/c;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/a/c/c;->d:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/acmeaom/android/a/c/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 153
    :cond_2
    if-eqz p1, :cond_0

    .line 154
    sget-object v0, Lcom/acmeaom/android/a/c/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/acmeaom/android/a/c/f;

    iget v2, p0, Lcom/acmeaom/android/a/c/c;->e:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/acmeaom/android/a/c/f;-><init>(ILjava/lang/Runnable;Lcom/acmeaom/android/a/c/d;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
