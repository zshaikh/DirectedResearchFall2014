.class public Lam/sunrise/android/calendar/sync/r;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SyncAdapter.java"

# interfaces
.implements Lam/sunrise/android/calendar/sync/z;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Lam/sunrise/android/calendar/sync/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;ZZ)V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/r;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lam/sunrise/android/calendar/sync/r;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    if-ne p1, v0, :cond_0

    .line 147
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/sync/events/SyncError;

    invoke-direct {v1, p1}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0}, Lam/sunrise/android/calendar/sync/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/sync/d;->a(Landroid/content/Context;Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    .line 150
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "SyncAdapter"

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/r;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 66
    const-string v0, "upload"

    invoke-virtual {p2, v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    const-string v1, "initialize"

    invoke-virtual {p2, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lam/sunrise/android/calendar/sync/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/a;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    const-string v1, "SyncAdapter"

    const-string v2, "onPerformSync: INITIALIZE -- Initialized"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lam/sunrise/android/calendar/sync/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/c;->u(Landroid/content/Context;)Lam/sunrise/android/calendar/e;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/sync/s;->a(Landroid/accounts/Account;Lam/sunrise/android/calendar/e;)V

    .line 122
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, "SyncAdapter"

    const-string v1, "onPerformSync: INITIALIZE -- AuthenticationToken is NOT valid"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/sync/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/c;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    const-string v0, "SyncAdapter"

    const-string v1, "onPerformSync: First Sync should be done first before doing background fetch"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_2
    const-string v1, "am.sunrise.android.calendar.extra.USER_REQUEST_SYNC"

    invoke-virtual {p2, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 101
    const-string v2, "am.sunrise.android.calendar.extra.APPLY_PENDING_ACTIONS"

    invoke-virtual {p2, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 103
    const-string v3, "SyncAdapter"

    const-string v4, "onPerformSync: isUserRequest=%s syncForUpload=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :try_start_0
    new-instance v3, Lam/sunrise/android/calendar/sync/v;

    invoke-direct {v3, p0}, Lam/sunrise/android/calendar/sync/v;-><init>(Lam/sunrise/android/calendar/sync/z;)V

    iput-object v3, p0, Lam/sunrise/android/calendar/sync/r;->b:Lam/sunrise/android/calendar/sync/v;

    .line 108
    if-eqz v2, :cond_4

    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/r;->b:Lam/sunrise/android/calendar/sync/v;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/v;->a()V

    .line 113
    :goto_1
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/r;->b:Lam/sunrise/android/calendar/sync/v;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/v;->run()V

    .line 114
    invoke-virtual {p0}, Lam/sunrise/android/calendar/sync/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {p0}, Lam/sunrise/android/calendar/sync/r;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 117
    iget-object v1, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 119
    :cond_3
    const-string v1, "SyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPerformSync: Runtime EXCEPTION -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 111
    :cond_4
    :try_start_1
    iget-object v2, p0, Lam/sunrise/android/calendar/sync/r;->b:Lam/sunrise/android/calendar/sync/v;

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lam/sunrise/android/calendar/sync/v;->a(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
