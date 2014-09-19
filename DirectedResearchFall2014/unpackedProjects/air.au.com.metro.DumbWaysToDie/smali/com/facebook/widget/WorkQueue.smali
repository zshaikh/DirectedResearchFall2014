.class Lcom/facebook/widget/WorkQueue;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_MAX_CONCURRENT:I = 0x8


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final maxConcurrent:I

.field private pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

.field private runningCount:I

.field private runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

.field private final workLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/widget/WorkQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/widget/WorkQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/widget/WorkQueue;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/widget/WorkQueue;-><init>(ILjava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/WorkQueue;->workLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    iput p1, p0, Lcom/facebook/widget/WorkQueue;->maxConcurrent:I

    iput-object p2, p0, Lcom/facebook/widget/WorkQueue;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/WorkQueue;Lcom/facebook/widget/WorkQueue$WorkNode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/widget/WorkQueue;->finishItemAndStartNew(Lcom/facebook/widget/WorkQueue$WorkNode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/widget/WorkQueue;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue;->workLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/widget/WorkQueue;)Lcom/facebook/widget/WorkQueue$WorkNode;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    return-object v0
.end method

.method static synthetic access$202(Lcom/facebook/widget/WorkQueue;Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;
    .locals 0

    iput-object p1, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    return-object p1
.end method

.method private execute(Lcom/facebook/widget/WorkQueue$WorkNode;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/widget/WorkQueue$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/widget/WorkQueue$1;-><init>(Lcom/facebook/widget/WorkQueue;Lcom/facebook/widget/WorkQueue$WorkNode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishItemAndStartNew(Lcom/facebook/widget/WorkQueue$WorkNode;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/widget/WorkQueue;->workLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    invoke-virtual {p1, v2}, Lcom/facebook/widget/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget v2, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    :cond_0
    iget v2, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    iget v3, p0, Lcom/facebook/widget/WorkQueue;->maxConcurrent:I

    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    invoke-virtual {v0, v2}, Lcom/facebook/widget/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/widget/WorkQueue$WorkNode;)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget-object v2, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/widget/WorkQueue$WorkNode;->addToList(Lcom/facebook/widget/WorkQueue$WorkNode;Z)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    iget v2, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/widget/WorkQueue$WorkNode;->setIsRunning(Z)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/facebook/widget/WorkQueue;->execute(Lcom/facebook/widget/WorkQueue$WorkNode;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startItem()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/widget/WorkQueue;->finishItemAndStartNew(Lcom/facebook/widget/WorkQueue$WorkNode;)V

    return-void
.end method


# virtual methods
.method addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/widget/WorkQueue$WorkItem;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/widget/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;Z)Lcom/facebook/widget/WorkQueue$WorkItem;

    move-result-object v0

    return-object v0
.end method

.method addActiveWorkItem(Ljava/lang/Runnable;Z)Lcom/facebook/widget/WorkQueue$WorkItem;
    .locals 3

    new-instance v0, Lcom/facebook/widget/WorkQueue$WorkNode;

    invoke-direct {v0, p0, p1}, Lcom/facebook/widget/WorkQueue$WorkNode;-><init>(Lcom/facebook/widget/WorkQueue;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/facebook/widget/WorkQueue;->workLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    invoke-virtual {v0, v2, p2}, Lcom/facebook/widget/WorkQueue$WorkNode;->addToList(Lcom/facebook/widget/WorkQueue$WorkNode;Z)Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/widget/WorkQueue;->pendingJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/widget/WorkQueue;->finishItemAndStartNew(Lcom/facebook/widget/WorkQueue$WorkNode;)V

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method validate()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/widget/WorkQueue;->workLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    move-object v4, v2

    move v2, v1

    move-object v1, v4

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/facebook/widget/WorkQueue$WorkNode;->verify(Z)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/facebook/widget/WorkQueue$WorkNode;->getNext()Lcom/facebook/widget/WorkQueue$WorkNode;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/widget/WorkQueue;->runningJobs:Lcom/facebook/widget/WorkQueue$WorkNode;

    if-ne v1, v3, :cond_0

    move v1, v2

    :cond_1
    sget-boolean v2, Lcom/facebook/widget/WorkQueue;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/facebook/widget/WorkQueue;->runningCount:I

    if-eq v2, v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
