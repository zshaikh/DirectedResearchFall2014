.class public Lcom/facebook/orca/server/BackgroundRefreshRunner;
.super Ljava/lang/Object;
.source "BackgroundRefreshRunner.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:J


# instance fields
.field private final d:Lcom/facebook/orca/cache/DataCache;

.field private final e:Lcom/facebook/orca/database/DbCache;

.field private final f:Lcom/facebook/orca/auth/AuthenticationManager;

.field private final g:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final h:Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

.field private final i:Landroid/content/BroadcastReceiver;

.field private final j:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final k:Z

.field private l:Landroid/os/Handler;

.field private m:Lcom/facebook/orca/common/async/CancellableRunnable;

.field private volatile n:Z

.field private volatile o:Z

.field private p:J

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "orca:BackgroundRefreshRunner"

    sput-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    .line 39
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b:J

    .line 40
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->c:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/database/DbCache;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/ops/OrcaServiceOperation;Z)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->q:Ljava/util/List;

    .line 66
    iput-object p2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d:Lcom/facebook/orca/cache/DataCache;

    .line 67
    iput-object p4, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e:Lcom/facebook/orca/database/DbCache;

    .line 68
    iput-object p3, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->f:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 69
    iput-object p5, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->j:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 70
    iput-object p6, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 71
    iput-boolean p7, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->k:Z

    .line 72
    new-instance v0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;-><init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->p:J

    .line 75
    new-instance v0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;

    invoke-direct {v0, p0, p6}, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;-><init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    invoke-virtual {p6, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    const-string v1, "com.facebook.orca.ACTION_THREAD_UPDATES_FOR_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/facebook/orca/server/BackgroundRefreshRunner$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner$2;-><init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    iput-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i:Landroid/content/BroadcastReceiver;

    .line 104
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;J)J
    .locals 0

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->p:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->l:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Lcom/facebook/orca/common/async/CancellableRunnable;)Lcom/facebook/orca/common/async/CancellableRunnable;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->m:Lcom/facebook/orca/common/async/CancellableRunnable;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->n:Z

    return p1
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/facebook/orca/server/BackgroundRefreshRunner;)J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->p:J

    return-wide v0
.end method

.method static synthetic c()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->f:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->n:Z

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 131
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->o:Z

    if-nez v0, :cond_0

    .line 135
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->k:Z

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h()V

    goto :goto_0
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->j:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->y:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 161
    sget-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    const-string v1, "Starting GET_APP_INFO"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v1, "get_app_info"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    const-string v1, "Starting FETCH_THREADS"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadsParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->d()Lcom/facebook/orca/server/FetchThreadsParams;

    move-result-object v0

    .line 174
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 175
    const-string v2, "fetchThreadsParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "fetch_threads"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 177
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e:Lcom/facebook/orca/database/DbCache;

    invoke-virtual {v0}, Lcom/facebook/orca/database/DbCache;->a()Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    sget-object v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    const-string v2, "Starting getThread (server)"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->h()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 192
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 193
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    iget-object v2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/DataCache;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/DataCache;->f(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 204
    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    .line 205
    :cond_1
    sget-object v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    const-string v2, "Starting getThread (db)"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->h()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 211
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 212
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 217
    :cond_2
    return-void
.end method

.method private declared-synchronized i()V
    .locals 5

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->m:Lcom/facebook/orca/common/async/CancellableRunnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 224
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->n:Z

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/facebook/orca/common/async/CancellableRunnable;

    new-instance v1, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;-><init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/CancellableRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 237
    iget-wide v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->p:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->l:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->p:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 242
    :goto_1
    if-eqz v1, :cond_0

    .line 243
    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->m:Lcom/facebook/orca/common/async/CancellableRunnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 240
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->q:Ljava/util/List;

    .line 113
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i()V

    .line 114
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->o:Z

    .line 118
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->o:Z

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i()V

    .line 121
    :cond_0
    return-void
.end method
