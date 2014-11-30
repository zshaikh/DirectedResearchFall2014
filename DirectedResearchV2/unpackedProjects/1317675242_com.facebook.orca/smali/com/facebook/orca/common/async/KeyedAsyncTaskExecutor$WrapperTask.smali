.class Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;
.super Landroid/os/AsyncTask;
.source "KeyedAsyncTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

.field private final b:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

.field private final c:Ljava/lang/Object;

.field private d:Lcom/facebook/orca/common/async/KeyedAsyncTask;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->a:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->b:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

    .line 67
    iput-object p3, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->c:Ljava/lang/Object;

    .line 68
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    .line 79
    invoke-static {v4, v5}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Async Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->d:Lcom/facebook/orca/common/async/KeyedAsyncTask;

    invoke-virtual {v1}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->d:Lcom/facebook/orca/common/async/KeyedAsyncTask;

    invoke-virtual {v1}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->d:Lcom/facebook/orca/common/async/KeyedAsyncTask;

    invoke-virtual {v1}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-result-wide v2

    .line 90
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->a:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    invoke-static {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->b(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;)Ljava/lang/String;

    move-result-object v0

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

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    return-object v1

    .line 89
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-result-wide v2

    .line 90
    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->a:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    invoke-static {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->b(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;)Ljava/lang/String;

    move-result-object v0

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

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_2
    throw v1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->b:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->a(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;)Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->d:Lcom/facebook/orca/common/async/KeyedAsyncTask;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->f()V

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->b:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->a()V

    .line 102
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->b:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

    invoke-static {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->a(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/KeyedAsyncTask;

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->d:Lcom/facebook/orca/common/async/KeyedAsyncTask;

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->d:Lcom/facebook/orca/common/async/KeyedAsyncTask;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->d()V

    .line 75
    return-void
.end method
