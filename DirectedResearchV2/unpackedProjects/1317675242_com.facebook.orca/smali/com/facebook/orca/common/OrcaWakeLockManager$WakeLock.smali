.class public Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;
.super Ljava/lang/Object;
.source "OrcaWakeLockManager.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/OrcaWakeLockManager;

.field private final b:Landroid/os/PowerManager$WakeLock;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:J

.field private g:I

.field private h:Z


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/OrcaWakeLockManager;Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->a:Lcom/facebook/orca/common/OrcaWakeLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b:Landroid/os/PowerManager$WakeLock;

    .line 63
    iput-object p3, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->c:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->c()V

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 69
    iget v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->d:I

    .line 70
    iget v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 6

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->d:I

    if-nez v0, :cond_2

    .line 81
    iget v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 85
    iget v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->d:I

    .line 86
    iget v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->d:I

    if-nez v0, :cond_0

    .line 87
    iget-wide v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->e:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->f:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->h:Z

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wake lock already disposed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    return-void
.end method
