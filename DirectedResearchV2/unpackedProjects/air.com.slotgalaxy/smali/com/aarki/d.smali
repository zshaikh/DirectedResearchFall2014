.class final Lcom/aarki/d;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field public static a:Z


# instance fields
.field private b:Lcom/aarki/Aarki$RewardListener;

.field private c:J

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/aarki/d;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "AarkiRewards"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 35
    new-instance v0, Lcom/aarki/d$1;

    invoke-direct {v0, p0}, Lcom/aarki/d$1;-><init>(Lcom/aarki/d;)V

    iput-object v0, p0, Lcom/aarki/d;->e:Ljava/lang/Runnable;

    .line 31
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/aarki/d;->c:J

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aarki/d;->b:Lcom/aarki/Aarki$RewardListener;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/aarki/d;J)J
    .locals 0

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/aarki/d;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aarki/d;)Lcom/aarki/Aarki$RewardListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/aarki/d;->b:Lcom/aarki/Aarki$RewardListener;

    return-object v0
.end method

.method static synthetic b(Lcom/aarki/d;)J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/aarki/d;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/aarki/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/aarki/d;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aarki/d;->b:Lcom/aarki/Aarki$RewardListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/aarki/d;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aarki/d;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/aarki/d;->c:J

    .line 178
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aarki/d;->a:Z

    .line 179
    iget-object v0, p0, Lcom/aarki/d;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aarki/d;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_0
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/aarki/Aarki$RewardListener;)V
    .locals 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aarki/d;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/aarki/d;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aarki/d;->d:Landroid/os/Handler;

    .line 168
    iput-object p1, p0, Lcom/aarki/d;->b:Lcom/aarki/Aarki$RewardListener;

    .line 169
    iget-object v0, p0, Lcom/aarki/d;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aarki/d;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
