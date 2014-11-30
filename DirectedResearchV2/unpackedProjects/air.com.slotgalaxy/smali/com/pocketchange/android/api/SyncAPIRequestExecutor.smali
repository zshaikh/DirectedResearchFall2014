.class public Lcom/pocketchange/android/api/SyncAPIRequestExecutor;
.super Lcom/pocketchange/android/api/APIRequestExecutor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Z)V
    .locals 0
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p2, "debug"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/pocketchange/android/api/APIRequestExecutor;-><init>(Lorg/apache/http/client/HttpClient;Z)V

    .line 15
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "debug"    # Z

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/pocketchange/android/api/SyncAPIRequestExecutor;-><init>(Lorg/apache/http/client/HttpClient;Z)V

    .line 11
    return-void
.end method


# virtual methods
.method protected submitTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
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
    .line 18
    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 20
    return-object v0
.end method
