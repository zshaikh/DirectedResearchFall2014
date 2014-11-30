.class Lcom/google/android/gms/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/b;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/g;

.field private b:Ljava/util/Timer;

.field private c:Ljava/util/TimerTask;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:J

.field private h:Z

.field private i:J

.field private j:Lcom/google/android/gms/b/ak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/g;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/android/gms/b/i;->a:Lcom/google/android/gms/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/b/i;->d:Z

    iput-boolean v2, p0, Lcom/google/android/gms/b/i;->e:Z

    iput v2, p0, Lcom/google/android/gms/b/i;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/b/i;->g:J

    iput-boolean v2, p0, Lcom/google/android/gms/b/i;->h:Z

    new-instance v0, Lcom/google/android/gms/b/j;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/j;-><init>(Lcom/google/android/gms/b/i;Lcom/google/android/gms/b/g;)V

    iput-object v0, p0, Lcom/google/android/gms/b/i;->j:Lcom/google/android/gms/b/ak;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/b/i;->d:Z

    return p1
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/b/a;->a()Lcom/google/android/gms/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "GoogleAnalytics isn\'t initialized for the Tracker!"

    invoke-static {v0}, Lcom/google/android/gms/b/n;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/b/i;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/b/i;->e:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/b/i;->a:Lcom/google/android/gms/b/g;

    invoke-static {v1}, Lcom/google/android/gms/b/g;->a(Lcom/google/android/gms/b/g;)Lcom/google/android/gms/b/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/a;->a(Lcom/google/android/gms/b/b;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/b/i;->a:Lcom/google/android/gms/b/g;

    invoke-static {v1}, Lcom/google/android/gms/b/g;->a(Lcom/google/android/gms/b/g;)Lcom/google/android/gms/b/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/a;->b(Lcom/google/android/gms/b/b;)V

    goto :goto_0
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/i;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/i;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/i;->b:Ljava/util/Timer;
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


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/gms/b/bj;->a()Lcom/google/android/gms/b/bj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/b/bk;->ai:Lcom/google/android/gms/b/bk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/bj;->a(Lcom/google/android/gms/b/bk;)V

    invoke-direct {p0}, Lcom/google/android/gms/b/i;->d()V

    iget-boolean v0, p0, Lcom/google/android/gms/b/i;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/b/i;->f:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/b/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/google/android/gms/b/i;->h:Z

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/gms/b/i;->d:Z

    iget v0, p0, Lcom/google/android/gms/b/i;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/b/i;->f:I

    iget-boolean v0, p0, Lcom/google/android/gms/b/i;->e:Z

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "&t"

    const-string v2, "appview"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/b/bj;->a()Lcom/google/android/gms/b/bj;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/b/bj;->a(Z)V

    iget-object v2, p0, Lcom/google/android/gms/b/i;->a:Lcom/google/android/gms/b/g;

    const-string v3, "&cd"

    iget-object v0, p0, Lcom/google/android/gms/b/i;->a:Lcom/google/android/gms/b/g;

    invoke-static {v0}, Lcom/google/android/gms/b/g;->b(Lcom/google/android/gms/b/g;)Lcom/google/android/gms/b/x;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/i;->a:Lcom/google/android/gms/b/g;

    invoke-static {v0}, Lcom/google/android/gms/b/g;->b(Lcom/google/android/gms/b/g;)Lcom/google/android/gms/b/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/x;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/i;->a:Lcom/google/android/gms/b/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/g;->a(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/b/bj;->a()Lcom/google/android/gms/b/bj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/bj;->a(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/b/i;->e:Z

    invoke-direct {p0}, Lcom/google/android/gms/b/i;->c()V

    return-void
.end method

.method public a()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/b/i;->h:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/b/i;->h:Z

    return v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/b/bj;->a()Lcom/google/android/gms/b/bj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/b/bk;->aj:Lcom/google/android/gms/b/bk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/bj;->a(Lcom/google/android/gms/b/bk;)V

    iget v0, p0, Lcom/google/android/gms/b/i;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/b/i;->f:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/b/i;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/b/i;->f:I

    iget-object v0, p0, Lcom/google/android/gms/b/i;->j:Lcom/google/android/gms/b/ak;

    invoke-interface {v0}, Lcom/google/android/gms/b/ak;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/b/i;->i:J

    iget v0, p0, Lcom/google/android/gms/b/i;->f:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/b/i;->d()V

    new-instance v0, Lcom/google/android/gms/b/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/b/k;-><init>(Lcom/google/android/gms/b/i;Lcom/google/android/gms/b/h;)V

    iput-object v0, p0, Lcom/google/android/gms/b/i;->c:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "waitForActivityStart"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/b/i;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/b/i;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/android/gms/b/i;->c:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method b()Z
    .locals 6

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/google/android/gms/b/i;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/b/i;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/i;->j:Lcom/google/android/gms/b/ak;

    invoke-interface {v0}, Lcom/google/android/gms/b/ak;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/b/i;->i:J

    iget-wide v4, p0, Lcom/google/android/gms/b/i;->g:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
