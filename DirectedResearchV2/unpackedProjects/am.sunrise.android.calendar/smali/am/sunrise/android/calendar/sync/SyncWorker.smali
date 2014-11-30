.class public Lam/sunrise/android/calendar/sync/SyncWorker;
.super Landroid/app/Service;
.source "SyncWorker.java"

# interfaces
.implements Lam/sunrise/android/calendar/sync/z;


# instance fields
.field private final a:Landroid/os/IBinder;

.field private volatile b:Landroid/os/Looper;

.field private volatile c:Lam/sunrise/android/calendar/sync/u;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    new-instance v0, Lam/sunrise/android/calendar/sync/t;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/sync/t;-><init>(Lam/sunrise/android/calendar/sync/SyncWorker;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->a:Landroid/os/IBinder;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->d:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->f:I

    .line 37
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->f:I

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->f:I

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 175
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 0

    .prologue
    .line 95
    return-object p0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iput p1, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->e:I

    .line 112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/sync/events/SyncProgress;

    invoke-direct {v1, p1}, Lam/sunrise/android/calendar/sync/events/SyncProgress;-><init>(I)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 129
    iput-boolean v5, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->g:Z

    .line 130
    const-string v0, "SyncWorker"

    const-string v1, "notifyError(code=%d, message=%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/SyncWorker;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/sync/events/SyncError;

    invoke-direct {v1, p1, p2}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {p0, p1, p2}, Lam/sunrise/android/calendar/sync/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 118
    iput-boolean v2, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->g:Z

    .line 119
    const-string v0, "SyncWorker"

    const-string v1, "notifyError(%s)"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/SyncWorker;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/sync/events/SyncError;

    invoke-direct {v1, p1}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {p0, p1}, Lam/sunrise/android/calendar/sync/d;->a(Landroid/content/Context;Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 69
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->g:Z

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/sync/SyncWorker;->a(I)V

    .line 73
    new-instance v0, Lam/sunrise/android/calendar/sync/v;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/sync/v;-><init>(Lam/sunrise/android/calendar/sync/z;)V

    .line 74
    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/v;->run()V

    .line 75
    iget-boolean v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->g:Z

    if-nez v0, :cond_0

    .line 76
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->d(Landroid/content/Context;)V

    .line 77
    invoke-static {p0}, Lam/sunrise/android/calendar/authenticator/a;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p0}, Lam/sunrise/android/calendar/c;->u(Landroid/content/Context;)Lam/sunrise/android/calendar/e;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/sync/s;->a(Landroid/accounts/Account;Lam/sunrise/android/calendar/e;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/SyncWorker;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/sync/events/SyncStatus;

    invoke-direct {v1, p1}, Lam/sunrise/android/calendar/sync/events/SyncStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 143
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "SyncWorker"

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->e:I

    monitor-exit v1

    return v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/SyncWorker;->e()V

    .line 148
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->b:Landroid/os/Looper;

    .line 46
    new-instance v0, Lam/sunrise/android/calendar/sync/u;

    iget-object v1, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->b:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/sync/u;-><init>(Lam/sunrise/android/calendar/sync/SyncWorker;Landroid/os/Looper;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->c:Lam/sunrise/android/calendar/sync/u;

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 52
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/SyncWorker;->e()V

    .line 154
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->c:Lam/sunrise/android/calendar/sync/u;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/u;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 57
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 58
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/SyncWorker;->c:Lam/sunrise/android/calendar/sync/u;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/sync/u;->sendMessage(Landroid/os/Message;)Z

    .line 60
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p3}, Lam/sunrise/android/calendar/sync/SyncWorker;->onStart(Landroid/content/Intent;I)V

    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lam/sunrise/android/calendar/sync/SyncWorker;->f()V

    .line 159
    const/4 v0, 0x1

    return v0
.end method
