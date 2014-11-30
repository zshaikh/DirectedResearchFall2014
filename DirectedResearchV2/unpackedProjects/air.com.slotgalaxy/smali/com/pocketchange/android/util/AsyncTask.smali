.class public Lcom/pocketchange/android/util/AsyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/util/AsyncTask$a;,
        Lcom/pocketchange/android/util/AsyncTask$Delegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/pocketchange/android/util/AsyncTask$Delegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pocketchange/android/util/AsyncTask$Delegate",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResult;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/pocketchange/android/util/AsyncTask$Delegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pocketchange/android/util/AsyncTask$Delegate",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/pocketchange/android/util/AsyncTask;, "Lcom/pocketchange/android/util/AsyncTask<TResult;>;"
    .local p1, "delegate":Lcom/pocketchange/android/util/AsyncTask$Delegate;, "Lcom/pocketchange/android/util/AsyncTask$Delegate<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/pocketchange/android/util/AsyncTask$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pocketchange/android/util/AsyncTask$a;-><init>(Lcom/pocketchange/android/util/AsyncTask$1;)V

    iput-object v0, p0, Lcom/pocketchange/android/util/AsyncTask;->a:Landroid/os/Handler;

    .line 21
    iput-object p1, p0, Lcom/pocketchange/android/util/AsyncTask;->b:Lcom/pocketchange/android/util/AsyncTask$Delegate;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/pocketchange/android/util/AsyncTask;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lcom/pocketchange/android/util/AsyncTask;, "Lcom/pocketchange/android/util/AsyncTask<TResult;>;"
    const/4 v1, 0x1

    .line 81
    invoke-static {}, Lcom/pocketchange/android/util/ThreadUtils;->assertExecutingOnMainThread()V

    .line 82
    iput-boolean v1, p0, Lcom/pocketchange/android/util/AsyncTask;->c:Z

    .line 83
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask;->d:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    move v0, v1

    .line 86
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask;->d:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected doInBackground()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/pocketchange/android/util/AsyncTask;->b:Lcom/pocketchange/android/util/AsyncTask$Delegate;

    invoke-virtual {v1}, Lcom/pocketchange/android/util/AsyncTask$Delegate;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    :goto_0
    return-object v1

    .line 53
    :catch_0
    move-exception v1

    .line 54
    iget-object v2, p0, Lcom/pocketchange/android/util/AsyncTask;->b:Lcom/pocketchange/android/util/AsyncTask$Delegate;

    invoke-virtual {v2}, Lcom/pocketchange/android/util/AsyncTask$Delegate;->handlesErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iput-object v1, p0, Lcom/pocketchange/android/util/AsyncTask;->f:Ljava/lang/Throwable;

    .line 62
    const/4 v1, 0x0

    goto :goto_0

    .line 56
    :cond_0
    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 57
    move-object v0, v1

    check-cast v0, Ljava/lang/Exception;

    move-object p0, v0

    throw p0

    .line 59
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public execute(Ljava/util/concurrent/Executor;)Lcom/pocketchange/android/util/AsyncTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/pocketchange/android/util/AsyncTask",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/pocketchange/android/util/AsyncTask;, "Lcom/pocketchange/android/util/AsyncTask<TResult;>;"
    invoke-static {}, Lcom/pocketchange/android/util/ThreadUtils;->assertExecutingOnMainThread()V

    .line 26
    iget-boolean v0, p0, Lcom/pocketchange/android/util/AsyncTask;->c:Z

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/pocketchange/android/util/AsyncTask$1;

    invoke-direct {v0, p0}, Lcom/pocketchange/android/util/AsyncTask$1;-><init>(Lcom/pocketchange/android/util/AsyncTask;)V

    .line 32
    new-instance v1, Lcom/pocketchange/android/util/AsyncTask$2;

    invoke-direct {v1, p0, v0}, Lcom/pocketchange/android/util/AsyncTask$2;-><init>(Lcom/pocketchange/android/util/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/pocketchange/android/util/AsyncTask;->d:Ljava/util/concurrent/FutureTask;

    .line 45
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask;->d:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    :cond_0
    return-object p0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask;->e:Ljava/lang/Object;

    return-object v0
.end method

.method protected onComplete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/pocketchange/android/util/AsyncTask;, "Lcom/pocketchange/android/util/AsyncTask<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-boolean v0, p0, Lcom/pocketchange/android/util/AsyncTask;->c:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask;->b:Lcom/pocketchange/android/util/AsyncTask$Delegate;

    invoke-virtual {v0}, Lcom/pocketchange/android/util/AsyncTask$Delegate;->onCancelled()V

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask;->b:Lcom/pocketchange/android/util/AsyncTask$Delegate;

    iget-object v1, p0, Lcom/pocketchange/android/util/AsyncTask;->f:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/util/AsyncTask$Delegate;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask;->b:Lcom/pocketchange/android/util/AsyncTask$Delegate;

    invoke-virtual {v0, p1}, Lcom/pocketchange/android/util/AsyncTask$Delegate;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected postResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/pocketchange/android/util/AsyncTask;, "Lcom/pocketchange/android/util/AsyncTask<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iput-object p1, p0, Lcom/pocketchange/android/util/AsyncTask;->e:Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    return-void
.end method
