.class Lcom/dolphin/browser/util/i;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/util/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/util/f;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/dolphin/browser/util/i;->a:Lcom/dolphin/browser/util/f;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .prologue
    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/util/i;->a:Lcom/dolphin/browser/util/f;

    invoke-virtual {p0}, Lcom/dolphin/browser/util/i;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/f;->b(Lcom/dolphin/browser/util/f;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 372
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 366
    :catch_1
    move-exception v0

    .line 367
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 369
    :catch_2
    move-exception v0

    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/util/i;->a:Lcom/dolphin/browser/util/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/f;->b(Lcom/dolphin/browser/util/f;Ljava/lang/Object;)V

    goto :goto_0
.end method