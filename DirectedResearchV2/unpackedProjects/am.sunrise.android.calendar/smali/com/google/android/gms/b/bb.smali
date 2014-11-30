.class Lcom/google/android/gms/b/bb;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/aw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/b/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/bb;->a:Lcom/google/android/gms/b/aw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/b/aw;Lcom/google/android/gms/b/ax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/bb;-><init>(Lcom/google/android/gms/b/aw;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/b/bb;->a:Lcom/google/android/gms/b/aw;

    invoke-static {v0}, Lcom/google/android/gms/b/aw;->b(Lcom/google/android/gms/b/aw;)Lcom/google/android/gms/b/ba;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/b/ba;->b:Lcom/google/android/gms/b/ba;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/bb;->a:Lcom/google/android/gms/b/aw;

    invoke-static {v0}, Lcom/google/android/gms/b/aw;->e(Lcom/google/android/gms/b/aw;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/bb;->a:Lcom/google/android/gms/b/aw;

    invoke-static {v0}, Lcom/google/android/gms/b/aw;->f(Lcom/google/android/gms/b/aw;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/b/bb;->a:Lcom/google/android/gms/b/aw;

    invoke-static {v2}, Lcom/google/android/gms/b/aw;->g(Lcom/google/android/gms/b/aw;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/b/bb;->a:Lcom/google/android/gms/b/aw;

    invoke-static {v2}, Lcom/google/android/gms/b/aw;->h(Lcom/google/android/gms/b/aw;)Lcom/google/android/gms/b/ak;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/b/ak;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/bb;->a:Lcom/google/android/gms/b/aw;

    invoke-static {v0}, Lcom/google/android/gms/b/aw;->i(Lcom/google/android/gms/b/aw;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/bb;->a:Lcom/google/android/gms/b/aw;

    invoke-static {v0}, Lcom/google/android/gms/b/aw;->j(Lcom/google/android/gms/b/aw;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/bb;

    iget-object v2, p0, Lcom/google/android/gms/b/bb;->a:Lcom/google/android/gms/b/aw;

    invoke-direct {v1, v2}, Lcom/google/android/gms/b/bb;-><init>(Lcom/google/android/gms/b/aw;)V

    iget-object v2, p0, Lcom/google/android/gms/b/bb;->a:Lcom/google/android/gms/b/aw;

    invoke-static {v2}, Lcom/google/android/gms/b/aw;->g(Lcom/google/android/gms/b/aw;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
