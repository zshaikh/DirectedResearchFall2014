.class public Lcom/fusepowered/m2/m2l/util/AsyncTasks;
.super Ljava/lang/Object;
.source "AsyncTasks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TP;**>;[TP;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TP;**>;"
    const-class v3, Landroid/os/AsyncTask;

    .line 13
    if-nez p0, :cond_0

    .line 14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to execute null AsyncTask."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_0
    invoke-static {}, Lcom/fusepowered/m2/m2l/util/VersionCode;->currentApiLevel()Lcom/fusepowered/m2/m2l/util/VersionCode;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/m2/m2l/util/VersionCode;->ICE_CREAM_SANDWICH:Lcom/fusepowered/m2/m2l/util/VersionCode;

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/m2l/util/VersionCode;->isAtLeast(Lcom/fusepowered/m2/m2l/util/VersionCode;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    const-class v1, Landroid/os/AsyncTask;

    const-string v1, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v2, Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 20
    .local v0, "threadPoolExecutor":Ljava/util/concurrent/Executor;
    new-instance v1, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;

    const-string v2, "executeOnExecutor"

    invoke-direct {v1, p0, v2}, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const-class v2, Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;

    move-result-object v1

    .line 22
    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 27
    .end local v0    # "threadPoolExecutor":Ljava/util/concurrent/Executor;
    :goto_0
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
