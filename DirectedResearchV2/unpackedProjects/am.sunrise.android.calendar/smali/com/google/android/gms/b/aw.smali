.class Lcom/google/android/gms/b/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ac;
.implements Lcom/google/android/gms/b/ad;
.implements Lcom/google/android/gms/b/v;


# instance fields
.field private volatile a:J

.field private volatile b:Lcom/google/android/gms/b/ba;

.field private volatile c:Lcom/google/android/gms/b/z;

.field private d:Lcom/google/android/gms/b/ae;

.field private e:Lcom/google/android/gms/b/ae;

.field private final f:Lcom/google/android/gms/b/a;

.field private final g:Lcom/google/android/gms/b/ag;

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/b/bd;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:I

.field private volatile k:Ljava/util/Timer;

.field private volatile l:Ljava/util/Timer;

.field private volatile m:Ljava/util/Timer;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/google/android/gms/b/ak;

.field private s:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/b/ag;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/b/a;->a(Landroid/content/Context;)Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/b/aw;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/ag;Lcom/google/android/gms/b/ae;Lcom/google/android/gms/b/a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/b/ag;Lcom/google/android/gms/b/ae;Lcom/google/android/gms/b/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->i:Ljava/util/Queue;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/gms/b/aw;->s:J

    iput-object p3, p0, Lcom/google/android/gms/b/aw;->e:Lcom/google/android/gms/b/ae;

    iput-object p1, p0, Lcom/google/android/gms/b/aw;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/b/aw;->g:Lcom/google/android/gms/b/ag;

    iput-object p4, p0, Lcom/google/android/gms/b/aw;->f:Lcom/google/android/gms/b/a;

    new-instance v0, Lcom/google/android/gms/b/ax;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/ax;-><init>(Lcom/google/android/gms/b/aw;)V

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->r:Lcom/google/android/gms/b/ak;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/b/aw;->j:I

    sget-object v0, Lcom/google/android/gms/b/ba;->g:Lcom/google/android/gms/b/ba;

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    return-void
.end method

.method private a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/b/aw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->h()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/b/aw;)Lcom/google/android/gms/b/ba;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/b/aw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->j()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/b/aw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->k()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/b/aw;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->i:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/b/aw;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/b/aw;->a:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/b/aw;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/b/aw;->s:J

    return-wide v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->k:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/aw;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/aw;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->l:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->m:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/aw;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->m:Ljava/util/Timer;

    return-void
.end method

.method static synthetic h(Lcom/google/android/gms/b/aw;)Lcom/google/android/gms/b/ak;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->r:Lcom/google/android/gms/b/ak;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/aw;->g:Lcom/google/android/gms/b/ag;

    invoke-interface {v2}, Lcom/google/android/gms/b/ag;->d()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->g:Lcom/google/android/gms/b/ag;

    invoke-interface {v1}, Lcom/google/android/gms/b/ag;->c()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/b/ay;

    invoke-direct {v2, p0}, Lcom/google/android/gms/b/ay;-><init>(Lcom/google/android/gms/b/aw;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/b/aw;->o:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/b/aw;->f()V

    :cond_2
    sget-object v1, Lcom/google/android/gms/b/az;->a:[I

    iget-object v2, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    invoke-virtual {v2}, Lcom/google/android/gms/b/ba;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :goto_1
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/gms/b/aw;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/b/bd;

    move-object v6, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending hit to store  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->d:Lcom/google/android/gms/b/ae;

    invoke-virtual {v6}, Lcom/google/android/gms/b/bd;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/b/bd;->b()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/google/android/gms/b/bd;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/android/gms/b/bd;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/b/ae;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/gms/b/aw;->n:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->i()V

    goto :goto_0

    :goto_2
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/gms/b/aw;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/b/bd;

    move-object v6, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending hit to service   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->f:Lcom/google/android/gms/b/a;

    invoke-virtual {v1}, Lcom/google/android/gms/b/a;->b()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->c:Lcom/google/android/gms/b/z;

    invoke-virtual {v6}, Lcom/google/android/gms/b/bd;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/b/bd;->b()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/google/android/gms/b/bd;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/android/gms/b/bd;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/b/z;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/b/aw;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string v1, "Dry run enabled. Hit not actually sent to service."

    invoke-static {v1}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/b/aw;->r:Lcom/google/android/gms/b/ak;

    invoke-interface {v1}, Lcom/google/android/gms/b/ak;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/b/aw;->a:J

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "Need to reconnect"

    invoke-static {v1}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->d:Lcom/google/android/gms/b/ae;

    invoke-interface {v0}, Lcom/google/android/gms/b/ae;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/b/aw;->n:Z

    return-void
.end method

.method static synthetic i(Lcom/google/android/gms/b/aw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->l()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/gms/b/aw;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->m:Ljava/util/Timer;

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    sget-object v1, Lcom/google/android/gms/b/ba;->c:Lcom/google/android/gms/b/ba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->g()V

    const-string v0, "falling back to local store"

    invoke-static {v0}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->e:Lcom/google/android/gms/b/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->e:Lcom/google/android/gms/b/ae;

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->d:Lcom/google/android/gms/b/ae;

    :goto_1
    sget-object v0, Lcom/google/android/gms/b/ba;->c:Lcom/google/android/gms/b/ba;

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/b/at;->c()Lcom/google/android/gms/b/at;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/b/aw;->g:Lcom/google/android/gms/b/ag;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/at;->a(Landroid/content/Context;Lcom/google/android/gms/b/ag;)V

    invoke-virtual {v0}, Lcom/google/android/gms/b/at;->d()Lcom/google/android/gms/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->d:Lcom/google/android/gms/b/ae;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized k()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/b/aw;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->c:Lcom/google/android/gms/b/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    sget-object v1, Lcom/google/android/gms/b/ba;->c:Lcom/google/android/gms/b/ba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/b/aw;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/b/aw;->j:I

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/aw;->a(Ljava/util/Timer;)Ljava/util/Timer;

    sget-object v0, Lcom/google/android/gms/b/ba;->a:Lcom/google/android/gms/b/ba;

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->l:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->l:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/b/bc;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/b/bc;-><init>(Lcom/google/android/gms/b/aw;Lcom/google/android/gms/b/ax;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->c:Lcom/google/android/gms/b/z;

    invoke-interface {v0}, Lcom/google/android/gms/b/z;->b()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "security exception on connectToService"

    invoke-static {v0}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "client not initialized."

    invoke-static {v0}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized l()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/aw;->c:Lcom/google/android/gms/b/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    sget-object v1, Lcom/google/android/gms/b/ba;->b:Lcom/google/android/gms/b/ba;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/b/ba;->f:Lcom/google/android/gms/b/ba;

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->c:Lcom/google/android/gms/b/z;

    invoke-interface {v0}, Lcom/google/android/gms/b/z;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->k:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/aw;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->k:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->k:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/b/be;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/b/be;-><init>(Lcom/google/android/gms/b/aw;Lcom/google/android/gms/b/ax;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/b/aw;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "setForceLocalDispatch called."

    invoke-static {v0}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/b/aw;->q:Z

    sget-object v0, Lcom/google/android/gms/b/az;->a:[I

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    invoke-virtual {v1}, Lcom/google/android/gms/b/ba;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/b/aw;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized a(ILandroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/b/ba;->e:Lcom/google/android/gms/b/ba;

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    iget v0, p0, Lcom/google/android/gms/b/aw;->j:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service unavailable (code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service unavailable (code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/di;",
            ">;)V"
        }
    .end annotation

    const-string v0, "putHit called"

    invoke-static {v0}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/b/aw;->i:Ljava/util/Queue;

    new-instance v0, Lcom/google/android/gms/b/bd;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/b/bd;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->h()V

    return-void
.end method

.method public b()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/b/az;->a:[I

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    invoke-virtual {v1}, Lcom/google/android/gms/b/ba;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/b/aw;->n:Z

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->i()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->c:Lcom/google/android/gms/b/z;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/b/aa;

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->h:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/b/aa;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/ac;Lcom/google/android/gms/b/ad;)V

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->c:Lcom/google/android/gms/b/z;

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->k()V

    goto :goto_0
.end method

.method public declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/aw;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/aw;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->l:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/b/aw;->j:I

    const-string v0, "Connected to service"

    invoke-static {v0}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/b/ba;->b:Lcom/google/android/gms/b/ba;

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    iget-boolean v0, p0, Lcom/google/android/gms/b/aw;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/b/aw;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->h()V

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->m:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/aw;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->m:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->m:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->m:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/b/bb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/b/bb;-><init>(Lcom/google/android/gms/b/aw;Lcom/google/android/gms/b/ax;)V

    iget-wide v2, p0, Lcom/google/android/gms/b/aw;->s:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    sget-object v1, Lcom/google/android/gms/b/ba;->f:Lcom/google/android/gms/b/ba;

    if-ne v0, v1, :cond_0

    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->g()V

    sget-object v0, Lcom/google/android/gms/b/ba;->g:Lcom/google/android/gms/b/ba;

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/b/ba;->e:Lcom/google/android/gms/b/ba;

    iput-object v0, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    iget v0, p0, Lcom/google/android/gms/b/aw;->j:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/b/aw;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public f()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "clearHits called"

    invoke-static {v0}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    sget-object v0, Lcom/google/android/gms/b/az;->a:[I

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->b:Lcom/google/android/gms/b/ba;

    invoke-virtual {v1}, Lcom/google/android/gms/b/ba;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/b/aw;->o:Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/b/aw;->d:Lcom/google/android/gms/b/ae;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/b/ae;->a(J)V

    iput-boolean v3, p0, Lcom/google/android/gms/b/aw;->o:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/b/aw;->c:Lcom/google/android/gms/b/z;

    invoke-interface {v0}, Lcom/google/android/gms/b/z;->a()V

    iput-boolean v3, p0, Lcom/google/android/gms/b/aw;->o:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
