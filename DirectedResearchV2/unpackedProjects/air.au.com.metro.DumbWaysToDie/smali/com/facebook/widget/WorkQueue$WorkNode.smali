.class Lcom/facebook/widget/WorkQueue$WorkNode;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/widget/WorkQueue$WorkItem;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final callback:Ljava/lang/Runnable;

.field private isRunning:Z

.field private next:Lcom/facebook/widget/WorkQueue$WorkNode;

.field private prev:Lcom/facebook/widget/WorkQueue$WorkNode;

.field final synthetic this$0:Lcom/facebook/widget/WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/widget/WorkQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/widget/WorkQueue;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->callback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method addToList(Lcom/facebook/widget/WorkQueue$WorkNode;Z)Lcom/facebook/widget/WorkQueue$WorkNode;
    .locals 2

    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    if-nez p1, :cond_3

    iput-object p0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object p0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    move-object v0, p0

    :goto_0
    if-eqz p2, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0

    :cond_3
    iput-object p1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v0, p1, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object p0, v1, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object p0, v0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    move-object v0, p1

    goto :goto_0
.end method

.method public cancel()Z
    .locals 3

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    # getter for: Lcom/facebook/widget/WorkQueue;->workLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/facebook/widget/WorkQueue;->access$100(Lcom/facebook/widget/WorkQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/widget/WorkQueue$WorkNode;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    iget-object v2, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    # getter for: Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;
    invoke-static {v2}, Lcom/facebook/widget/WorkQueue;->access$200(Lcom/facebook/widget/WorkQueue;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/widget/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    # setter for: Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;
    invoke-static {v1, v2}, Lcom/facebook/widget/WorkQueue;->access$202(Lcom/facebook/widget/WorkQueue;Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    const/4 v1, 0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method getNext()Lcom/facebook/widget/WorkQueue$WorkNode;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->isRunning:Z

    return v0
.end method

.method public moveToFront()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    # getter for: Lcom/facebook/widget/WorkQueue;->workLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/facebook/widget/WorkQueue;->access$100(Lcom/facebook/widget/WorkQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/widget/WorkQueue$WorkNode;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    iget-object v2, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    # getter for: Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;
    invoke-static {v2}, Lcom/facebook/widget/WorkQueue;->access$200(Lcom/facebook/widget/WorkQueue;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/widget/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    # setter for: Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;
    invoke-static {v1, v2}, Lcom/facebook/widget/WorkQueue;->access$202(Lcom/facebook/widget/WorkQueue;Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    iget-object v2, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->this$0:Lcom/facebook/widget/WorkQueue;

    # getter for: Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;
    invoke-static {v2}, Lcom/facebook/widget/WorkQueue;->access$200(Lcom/facebook/widget/WorkQueue;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/facebook/widget/WorkQueue$WorkNode;->addToList(Lcom/facebook/widget/WorkQueue$WorkNode;Z)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    # setter for: Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;
    invoke-static {v1, v2}, Lcom/facebook/widget/WorkQueue;->access$202(Lcom/facebook/widget/WorkQueue;Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method removeFromList(Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    if-ne p1, p0, :cond_3

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-ne v0, p0, :cond_2

    move-object v0, v3

    :goto_0
    iget-object v1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v2, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object v2, v1, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v2, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object v2, v1, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object v3, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iput-object v3, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    goto :goto_0

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method setIsRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->isRunning:Z

    return-void
.end method

.method verify(Z)V
    .locals 1

    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v0, v0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue$WorkNode;->next:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v0, v0, Lcom/facebook/widget/WorkQueue$WorkNode;->prev:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v0, Lcom/facebook/widget/WorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/widget/WorkQueue$WorkNode;->isRunning()Z

    move-result v0

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    return-void
.end method
