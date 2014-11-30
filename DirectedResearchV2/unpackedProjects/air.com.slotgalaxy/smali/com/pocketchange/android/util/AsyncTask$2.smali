.class Lcom/pocketchange/android/util/AsyncTask$2;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/util/AsyncTask;->execute(Ljava/util/concurrent/Executor;)Lcom/pocketchange/android/util/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/util/AsyncTask;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/util/AsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/pocketchange/android/util/AsyncTask$2;->a:Lcom/pocketchange/android/util/AsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask$2;->a:Lcom/pocketchange/android/util/AsyncTask;

    invoke-virtual {p0}, Lcom/pocketchange/android/util/AsyncTask$2;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/util/AsyncTask;->postResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask$2;->a:Lcom/pocketchange/android/util/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/util/AsyncTask;->postResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 38
    :catch_2
    move-exception v0

    goto :goto_0
.end method
