.class public Lcom/facebook/orca/server/OrcaServiceQueue;
.super Ljava/lang/Object;
.source "OrcaServiceQueue.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/orca/server/Operation;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/orca/server/Operation;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/server/OrcaServiceHandler;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/facebook/orca/app/ContextScope;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/HandlerThread;

.field private j:Landroid/os/Handler;

.field private k:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/app/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/orca/app/ContextScope;",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/server/OrcaServiceHandler;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->f:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Lcom/facebook/orca/app/ContextScope;

    .line 94
    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->b:Ljava/util/LinkedList;

    .line 95
    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->d:Ljava/util/LinkedList;

    .line 96
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->c:Ljava/util/Map;

    .line 97
    iput-object p3, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->e:Lcom/facebook/orca/server/OrcaServiceHandler;

    .line 99
    iput-object p5, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/List;

    .line 100
    return-void
.end method

.method private a(Ljava/lang/Throwable;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    const-string v1, "originalExceptionMessage"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "originalExceptionStack"

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    instance-of v1, p1, Lcom/facebook/orca/server/ExceptionWithExtraData;

    if-eqz v1, :cond_0

    .line 221
    check-cast p1, Lcom/facebook/orca/server/ExceptionWithExtraData;

    .line 222
    const-string v1, "result"

    invoke-interface {p1}, Lcom/facebook/orca/server/ExceptionWithExtraData;->a()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 224
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/List;

    return-object v0
.end method

.method private a(J)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->j:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/OrcaServiceQueue$3;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/common/async/Deferred;)V
    .locals 2

    .prologue
    .line 257
    invoke-static {p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/common/async/Deferred;)Lcom/facebook/orca/common/async/Deferred;

    .line 258
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 259
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->c(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/server/OrcaServiceQueue$4;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 269
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->c(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/server/OrcaServiceQueue$5;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->b(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 279
    return-void
.end method

.method private declared-synchronized a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    .locals 3

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)Lcom/facebook/orca/server/OperationResult;

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;J)J

    .line 292
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->d:Ljava/util/LinkedList;

    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->d(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ICompletionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :try_start_1
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->f(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/orca/server/ICompletionHandler;->b(Lcom/facebook/orca/server/OperationResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0

    .line 300
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1, v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Ljava/util/List;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;J)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue;->b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    .locals 2

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ICompletionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :try_start_1
    invoke-interface {v0, p2}, Lcom/facebook/orca/server/ICompletionHandler;->a(Lcom/facebook/orca/server/OperationResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    goto :goto_0

    .line 315
    :cond_0
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/facebook/orca/server/OrcaServiceQueue;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaServiceQueue;->c()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/server/OrcaServiceQueue;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private c()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x3

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    if-nez v0, :cond_1

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueueHook;

    .line 168
    invoke-interface {v0}, Lcom/facebook/orca/server/OrcaServiceQueueHook;->b()V

    goto :goto_1

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 170
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaServiceQueue;->d()V

    .line 214
    return-void

    .line 172
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/Operation;

    .line 173
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 174
    if-nez v1, :cond_3

    .line 175
    const-string v0, "orca:OrcaServiceQueue"

    const-string v1, "No holder for queued operation!"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    monitor-exit p0

    goto :goto_0

    .line 178
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;J)J

    .line 179
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OrcaService ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 183
    iget-object v3, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Lcom/facebook/orca/app/ContextScope;

    iget-object v4, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->f:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 185
    :try_start_3
    new-instance v3, Lcom/facebook/orca/server/OperationParams;

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)V

    .line 187
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->e:Lcom/facebook/orca/server/OrcaServiceHandler;

    invoke-interface {v0, v3}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 189
    instance-of v3, v0, Lcom/facebook/orca/server/DeferredOperationResult;

    if-eqz v3, :cond_5

    .line 190
    check-cast v0, Lcom/facebook/orca/server/DeferredOperationResult;

    .line 192
    invoke-virtual {v0}, Lcom/facebook/orca/server/DeferredOperationResult;->g()Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/common/async/Deferred;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Lcom/facebook/orca/app/ContextScope;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/ContextScope;->b(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v2, v7, v8}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 204
    invoke-static {v6}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    const-string v0, "orca:OrcaServiceQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread trace:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_4
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->a()V

    goto/16 :goto_0

    .line 194
    :cond_5
    :try_start_4
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 196
    :catch_0
    move-exception v0

    .line 197
    :try_start_5
    const-string v3, "orca:OrcaServiceQueue"

    const-string v4, "Exception during service"

    invoke-static {v3, v4, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    invoke-static {v0}, Lcom/facebook/orca/common/http/ErrorCodeUtil;->a(Ljava/lang/Throwable;)Lcom/facebook/orca/server/ErrorCode;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Ljava/lang/Throwable;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Landroid/os/Bundle;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 200
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 202
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Lcom/facebook/orca/app/ContextScope;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/ContextScope;->b(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v2, v7, v8}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 204
    invoke-static {v6}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 205
    const-string v0, "orca:OrcaServiceQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread trace:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_6
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->a()V

    goto/16 :goto_0

    .line 202
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Lcom/facebook/orca/app/ContextScope;

    iget-object v3, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->f:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/app/ContextScope;->b(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v2, v7, v8}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 204
    invoke-static {v6}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 205
    const-string v1, "orca:OrcaServiceQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread trace:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_7
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->a()V

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 9

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 232
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 233
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/Operation;

    .line 235
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 236
    if-nez v1, :cond_0

    .line 237
    const-string v5, "orca:OrcaServiceQueue"

    const-string v6, "No holder for recently completed operation!"

    invoke-static {v5, v6}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 240
    :cond_0
    invoke-static {v1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/16 v7, 0x7530

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 249
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 250
    const-wide/16 v0, 0x3a98

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrcaServiceQueue - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Landroid/os/HandlerThread;

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 107
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->j:Landroid/os/Handler;

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->j:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/OrcaServiceQueue$1;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method a(Lcom/facebook/orca/server/Operation;)V
    .locals 3

    .prologue
    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    invoke-direct {v0, p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;-><init>(Lcom/facebook/orca/server/Operation;)V

    .line 133
    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/orca/server/OrcaServiceQueue$2;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)V

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    .line 139
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/server/Operation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueueHook;

    .line 143
    invoke-interface {v0, p1}, Lcom/facebook/orca/server/OrcaServiceQueueHook;->a(Lcom/facebook/orca/server/Operation;)V

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 145
    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(J)V

    .line 146
    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z
    .locals 2

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 340
    :goto_0
    monitor-exit p0

    return v0

    .line 330
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->f(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OperationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    .line 333
    :try_start_2
    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->f(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/orca/server/ICompletionHandler;->b(Lcom/facebook/orca/server/OperationResult;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    :try_start_3
    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 334
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 121
    iput-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Landroid/os/HandlerThread;

    .line 123
    :cond_0
    iput-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->j:Landroid/os/Handler;

    .line 124
    return-void
.end method
