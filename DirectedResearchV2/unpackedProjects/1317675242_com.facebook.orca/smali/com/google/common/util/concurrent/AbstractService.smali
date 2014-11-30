.class public abstract Lcom/google/common/util/concurrent/AbstractService;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field private final b:Lcom/google/common/util/concurrent/AbstractService$Transition;

.field private final c:Lcom/google/common/util/concurrent/AbstractService$Transition;

.field private d:Lcom/google/common/util/concurrent/Service$State;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->b:Lcom/google/common/util/concurrent/AbstractService$Transition;

    .line 46
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->c:Lcom/google/common/util/concurrent/AbstractService$Transition;

    .line 52
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService;->e:Z

    .line 251
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/Service$State;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 234
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    .line 235
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 237
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 207
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->b:Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->a(Ljava/lang/Throwable;)Z

    .line 213
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->c:Lcom/google/common/util/concurrent/AbstractService$Transition;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed to start."

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->a(Ljava/lang/Throwable;)Z

    .line 219
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 223
    return-void

    .line 215
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->c:Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->a(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected abstract b()V
.end method

.method public final c()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_1

    .line 108
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    .line 109
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->b:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->a(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->c:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->c:Lcom/google/common/util/concurrent/AbstractService$Transition;

    return-object v0

    .line 111
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_2

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService;->e:Z

    .line 113
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->b:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 120
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 114
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    .line 115
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    .line 116
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected final d()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->a(Ljava/lang/Throwable;)V

    .line 161
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 164
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    .line 165
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService;->e:Z

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->c()Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 173
    return-void

    .line 168
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->b:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->a(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final e()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notifyStopped() when the service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->a(Ljava/lang/Throwable;)V

    .line 190
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 193
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->d:Lcom/google/common/util/concurrent/Service$State;

    .line 194
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->c:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 198
    return-void
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
