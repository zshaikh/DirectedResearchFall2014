.class public Lcom/pocketchange/android/util/OperationQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/util/OperationQueue$Enqueuer;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pocketchange/android/util/OperationQueue;-><init>(Z)V

    .line 15
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "debug"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/util/OperationQueue;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 18
    iput-boolean p1, p0, Lcom/pocketchange/android/util/OperationQueue;->a:Z

    .line 19
    return-void
.end method


# virtual methods
.method public containsOperation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pocketchange/android/util/OperationQueue;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createRemoveOperationCallback(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/pocketchange/android/util/OperationQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/pocketchange/android/util/OperationQueue$1;-><init>(Lcom/pocketchange/android/util/OperationQueue;Ljava/lang/String;)V

    return-object v0
.end method

.method public offer(Ljava/lang/String;Lcom/pocketchange/android/util/OperationQueue$Enqueuer;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enqueuer"    # Lcom/pocketchange/android/util/OperationQueue$Enqueuer;

    .prologue
    const-string v5, "] (rejected by enqueuer)"

    const-string v4, "Ignoring offer of operation ["

    const-string v3, "OperationQueue"

    .line 22
    iget-boolean v0, p0, Lcom/pocketchange/android/util/OperationQueue;->a:Z

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "OperationQueue"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received offer of operation ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/util/OperationQueue;->b:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 26
    const/4 v0, 0x0

    .line 28
    :try_start_0
    invoke-interface {p2}, Lcom/pocketchange/android/util/OperationQueue$Enqueuer;->offer()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/util/OperationQueue;->remove(Ljava/lang/String;)V

    .line 32
    iget-boolean v0, p0, Lcom/pocketchange/android/util/OperationQueue;->a:Z

    if-eqz v0, :cond_1

    .line 33
    const-string v0, "OperationQueue"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring offer of operation ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] (rejected by enqueuer)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_1
    :goto_0
    return-void

    .line 30
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    .line 31
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/util/OperationQueue;->remove(Ljava/lang/String;)V

    .line 32
    iget-boolean v0, p0, Lcom/pocketchange/android/util/OperationQueue;->a:Z

    if-eqz v0, :cond_2

    .line 33
    const-string v0, "OperationQueue"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring offer of operation ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] (rejected by enqueuer)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v1

    .line 37
    :cond_3
    iget-boolean v0, p0, Lcom/pocketchange/android/util/OperationQueue;->a:Z

    if-eqz v0, :cond_1

    .line 38
    const-string v0, "OperationQueue"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring offer of operation ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] (already enqueued)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pocketchange/android/util/OperationQueue;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method
