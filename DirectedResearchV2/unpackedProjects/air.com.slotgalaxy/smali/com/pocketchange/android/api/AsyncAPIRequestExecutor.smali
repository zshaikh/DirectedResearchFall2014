.class public Lcom/pocketchange/android/api/AsyncAPIRequestExecutor;
.super Lcom/pocketchange/android/api/APIRequestExecutor;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lorg/apache/http/client/HttpClient;Z)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p3, "debug"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p2, p3}, Lcom/pocketchange/android/api/APIRequestExecutor;-><init>(Lorg/apache/http/client/HttpClient;Z)V

    .line 19
    if-nez p1, :cond_0

    .line 20
    const/4 v0, 0x1

    const-string v1, "AsyncAPIRequestExecutor"

    invoke-static {v0, v1}, Lcom/pocketchange/android/util/ThreadUtils;->createFixedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/pocketchange/android/api/AsyncAPIRequestExecutor;->a:Ljava/util/concurrent/ExecutorService;

    .line 23
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "debug"    # Z

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0, v0, p1}, Lcom/pocketchange/android/api/AsyncAPIRequestExecutor;-><init>(Ljava/util/concurrent/ExecutorService;Lorg/apache/http/client/HttpClient;Z)V

    .line 15
    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/pocketchange/android/api/APIRequestExecutor;->shutdown()V

    .line 31
    iget-object v0, p0, Lcom/pocketchange/android/api/AsyncAPIRequestExecutor;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 32
    return-void
.end method

.method protected submitTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pocketchange/android/api/AsyncAPIRequestExecutor;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
