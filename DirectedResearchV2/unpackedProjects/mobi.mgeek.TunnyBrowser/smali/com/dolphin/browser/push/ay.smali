.class Lcom/dolphin/browser/push/ay;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/aw;

.field private b:Lcom/dolphin/browser/Network/d;

.field private c:Lcom/dolphin/browser/push/ax;

.field private d:J

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/dolphin/browser/util/t;

.field private final i:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/aw;Lcom/dolphin/browser/Network/d;Lcom/dolphin/browser/push/ax;Lcom/dolphin/browser/util/t;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iput-object p1, p0, Lcom/dolphin/browser/push/ay;->a:Lcom/dolphin/browser/push/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/ay;->i:Ljava/lang/Object;

    .line 87
    iput-object p2, p0, Lcom/dolphin/browser/push/ay;->b:Lcom/dolphin/browser/Network/d;

    .line 88
    iput-object p3, p0, Lcom/dolphin/browser/push/ay;->c:Lcom/dolphin/browser/push/ax;

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolphin/browser/push/ay;->d:J

    .line 90
    iput v2, p0, Lcom/dolphin/browser/push/ay;->e:I

    .line 91
    iput-boolean v2, p0, Lcom/dolphin/browser/push/ay;->g:Z

    .line 92
    iput-object p4, p0, Lcom/dolphin/browser/push/ay;->h:Lcom/dolphin/browser/util/t;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/push/ay;)J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/dolphin/browser/push/ay;->d:J

    return-wide v0
.end method

.method static synthetic a(Lcom/dolphin/browser/push/ay;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/dolphin/browser/push/ay;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/push/ay;)Lcom/dolphin/browser/push/ax;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/push/ay;->c:Lcom/dolphin/browser/push/ax;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/push/ay;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/push/ay;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    .line 158
    iget-object v1, p0, Lcom/dolphin/browser/push/ay;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-boolean v0, p0, Lcom/dolphin/browser/push/ay;->f:Z

    if-eqz v0, :cond_0

    .line 160
    monitor-exit v1

    .line 170
    :goto_0
    return-void

    .line 162
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/push/ay;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/push/ay;->e:I

    int-to-long v2, v0

    const-wide/16 v4, 0x14

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 163
    const-string v0, "RequestManager"

    const-string v2, "Request %s failed and max retry count reached."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/push/ay;->b:Lcom/dolphin/browser/Network/d;

    invoke-virtual {v5}, Lcom/dolphin/browser/Network/d;->h()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    monitor-exit v1

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 166
    :cond_1
    const-wide/32 v2, 0xea60

    :try_start_1
    iget-wide v4, p0, Lcom/dolphin/browser/push/ay;->d:J

    const-wide/16 v6, 0xbb8

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dolphin/browser/push/ay;->d:J

    .line 167
    const-string v0, "RequestManager"

    const-string v2, "Request %s failed, retry after %dms"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/push/ay;->b:Lcom/dolphin/browser/Network/d;

    invoke-virtual {v5}, Lcom/dolphin/browser/Network/d;->h()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/dolphin/browser/push/ay;->d:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/push/ay;->a:Lcom/dolphin/browser/push/aw;

    invoke-static {v0}, Lcom/dolphin/browser/push/aw;->a(Lcom/dolphin/browser/push/aw;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v2, p0, Lcom/dolphin/browser/push/ay;->d:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic d(Lcom/dolphin/browser/push/ay;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/dolphin/browser/push/ay;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/dolphin/browser/push/ay;)Lcom/dolphin/browser/Network/d;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/push/ay;->b:Lcom/dolphin/browser/Network/d;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/push/ay;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/dolphin/browser/push/ay;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lcom/dolphin/browser/push/ay;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/dolphin/browser/push/ay;->f:Z

    .line 153
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/push/ay;->a:Lcom/dolphin/browser/push/aw;

    invoke-static {v0}, Lcom/dolphin/browser/push/aw;->a(Lcom/dolphin/browser/push/aw;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b()V
    .locals 4

    .prologue
    .line 173
    iget-object v1, p0, Lcom/dolphin/browser/push/ay;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/dolphin/browser/push/ay;->e:I

    .line 175
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/dolphin/browser/push/ay;->d:J

    .line 176
    iget-boolean v0, p0, Lcom/dolphin/browser/push/ay;->g:Z

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/push/ay;->a:Lcom/dolphin/browser/push/aw;

    invoke-static {v0}, Lcom/dolphin/browser/push/aw;->a(Lcom/dolphin/browser/push/aw;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/push/ay;->a:Lcom/dolphin/browser/push/aw;

    invoke-static {v0}, Lcom/dolphin/browser/push/aw;->a(Lcom/dolphin/browser/push/aw;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_0
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lcom/dolphin/browser/push/ay;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/dolphin/browser/push/ay;->g:Z

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    new-instance v0, Lcom/dolphin/browser/push/az;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/az;-><init>(Lcom/dolphin/browser/push/ay;)V

    iget-object v1, p0, Lcom/dolphin/browser/push/ay;->h:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    .line 148
    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
