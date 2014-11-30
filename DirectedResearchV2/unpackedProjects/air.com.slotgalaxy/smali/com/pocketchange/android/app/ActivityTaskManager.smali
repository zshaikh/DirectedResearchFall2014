.class public Lcom/pocketchange/android/app/ActivityTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/app/ActivityTaskManager$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pocketchange/android/app/ActivityTaskManager$a",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pocketchange/android/app/ActivityTaskManager;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    const-string v0, "ActivityTaskManager"

    :goto_0
    iput-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->a:Ljava/lang/String;

    .line 24
    return-void

    :cond_0
    move-object v0, p1

    .line 23
    goto :goto_0
.end method

.method static synthetic a(Lcom/pocketchange/android/app/ActivityTaskManager;)Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/pocketchange/android/app/ActivityTaskManager;)Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->b:Z

    return v0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->b:Z

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action while the task manager is stopped"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->e:Ljava/util/List;

    if-nez v0, :cond_1

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pocketchange/android/app/ActivityTaskManager$a;

    .line 78
    invoke-virtual {v0}, Lcom/pocketchange/android/app/ActivityTaskManager$a;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pocketchange/android/app/ActivityTaskManager$a;->onComplete(Ljava/lang/Object;)V

    goto :goto_1

    .line 80
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->e:Ljava/util/List;

    goto :goto_0
.end method

.method a(Lcom/pocketchange/android/app/ActivityTaskManager$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pocketchange/android/app/ActivityTaskManager$a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->e:Ljava/util/List;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public executeTask(Lcom/pocketchange/android/util/AsyncTask$Delegate;)Lcom/pocketchange/android/util/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pocketchange/android/util/AsyncTask$Delegate",
            "<TResult;>;)",
            "Lcom/pocketchange/android/util/AsyncTask",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "delegate":Lcom/pocketchange/android/util/AsyncTask$Delegate;, "Lcom/pocketchange/android/util/AsyncTask$Delegate<TResult;>;"
    new-instance v0, Lcom/pocketchange/android/app/ActivityTaskManager$a;

    invoke-direct {v0, p0, p1}, Lcom/pocketchange/android/app/ActivityTaskManager$a;-><init>(Lcom/pocketchange/android/app/ActivityTaskManager;Lcom/pocketchange/android/util/AsyncTask$Delegate;)V

    invoke-virtual {p0}, Lcom/pocketchange/android/app/ActivityTaskManager;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/app/ActivityTaskManager$a;->execute(Ljava/util/concurrent/Executor;)Lcom/pocketchange/android/util/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method protected getExecutor()Ljava/util/concurrent/Executor;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 56
    iget-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task Executor ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v2}, Lcom/pocketchange/android/util/ThreadUtils;->createFixedThreadPool(ILjava/lang/String;Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->d:Ljava/util/concurrent/ExecutorService;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->c:Z

    .line 46
    iget-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 49
    :cond_0
    return-void
.end method

.method public onPostResume()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->b:Z

    .line 33
    invoke-virtual {p0}, Lcom/pocketchange/android/app/ActivityTaskManager;->a()V

    .line 34
    return-void
.end method

.method public onSaveInstanceState()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->b:Z

    .line 38
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->b:Z

    .line 28
    invoke-virtual {p0}, Lcom/pocketchange/android/app/ActivityTaskManager;->a()V

    .line 29
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager;->b:Z

    .line 42
    return-void
.end method
