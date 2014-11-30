.class public Lcom/dolphin/browser/util/r;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# direct methods
.method public static varargs a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dolphin/browser/util/f",
            "<TParams;TProgress;TResult;>;",
            "Lcom/dolphin/browser/util/t;",
            "[TParams;)",
            "Lcom/dolphin/browser/util/f",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/util/t;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p2}, Lcom/dolphin/browser/util/f;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dolphin/browser/util/f",
            "<TParams;TProgress;TResult;>;[TParams;)",
            "Lcom/dolphin/browser/util/f",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    invoke-static {p0, v0, p1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/dolphin/browser/util/s;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/s;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, p1, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 56
    return-void
.end method
