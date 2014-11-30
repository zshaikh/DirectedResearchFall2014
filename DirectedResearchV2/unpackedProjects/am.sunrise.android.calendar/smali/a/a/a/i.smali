.class final La/a/a/i;
.super Landroid/os/Handler;
.source "HandlerPoster.java"


# instance fields
.field private final a:La/a/a/l;

.field private final b:I

.field private final c:La/a/a/c;

.field private d:Z


# direct methods
.method constructor <init>(La/a/a/c;Landroid/os/Looper;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    iput-object p1, p0, La/a/a/i;->c:La/a/a/c;

    .line 33
    iput p3, p0, La/a/a/i;->b:I

    .line 34
    new-instance v0, La/a/a/l;

    invoke-direct {v0}, La/a/a/l;-><init>()V

    iput-object v0, p0, La/a/a/i;->a:La/a/a/l;

    .line 35
    return-void
.end method


# virtual methods
.method a(La/a/a/p;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 38
    invoke-static {p1, p2}, La/a/a/k;->a(La/a/a/p;Ljava/lang/Object;)La/a/a/k;

    move-result-object v0

    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v1, p0, La/a/a/i;->a:La/a/a/l;

    invoke-virtual {v1, v0}, La/a/a/l;->a(La/a/a/k;)V

    .line 41
    iget-boolean v0, p0, La/a/a/i;->d:Z

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/i;->d:Z

    .line 43
    invoke-virtual {p0}, La/a/a/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/i;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, La/a/a/h;

    const-string v1, "Could not send handler message"

    invoke-direct {v0, v1}, La/a/a/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 52
    .line 54
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 56
    :cond_0
    iget-object v0, p0, La/a/a/i;->a:La/a/a/l;

    invoke-virtual {v0}, La/a/a/l;->a()La/a/a/k;

    move-result-object v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    iget-object v0, p0, La/a/a/i;->a:La/a/a/l;

    invoke-virtual {v0}, La/a/a/l;->a()La/a/a/k;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/i;->d:Z

    .line 63
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    iput-boolean v7, p0, La/a/a/i;->d:Z

    :goto_0
    return-void

    .line 65
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :cond_2
    :try_start_3
    iget-object v3, p0, La/a/a/i;->c:La/a/a/c;

    invoke-virtual {v3, v0}, La/a/a/c;->a(La/a/a/k;)V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 69
    iget v0, p0, La/a/a/i;->b:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    .line 70
    invoke-virtual {p0}, La/a/a/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/i;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    new-instance v0, La/a/a/h;

    const-string v1, "Could not send handler message"

    invoke-direct {v0, v1}, La/a/a/h;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    iput-boolean v7, p0, La/a/a/i;->d:Z

    throw v0

    .line 65
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 73
    :cond_3
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, La/a/a/i;->d:Z

    goto :goto_0
.end method
