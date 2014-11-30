.class public Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;
.super Ljava/util/concurrent/FutureTask;
.source "FutureTaskAutoRetry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKOFF_TIME_MILLISECONDS:I = 0x1388

.field private static maxAttempt:I

.field private static final random:Ljava/util/Random;


# instance fields
.field protected attemptsLeft:I

.field private currentAttempt:I

.field private currentBackoff:J

.field private run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

.field private tag:Ljava/lang/String;

.field private threadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x5

    sput v0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->maxAttempt:I

    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;)V
    .locals 4
    .param p1, "maxAttempts"    # I
    .param p2, "aTag"    # Ljava/lang/String;
    .param p3, "threadNameStr"    # Ljava/lang/String;
    .param p4, "runnable"    # Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentBackoff:J

    .line 31
    iput v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentAttempt:I

    .line 34
    iput-object v2, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->tag:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->threadName:Ljava/lang/String;

    .line 43
    iput v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->attemptsLeft:I

    .line 46
    iput-object v2, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    .line 55
    iput-object p2, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->tag:Ljava/lang/String;

    .line 56
    sput p1, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->maxAttempt:I

    .line 57
    iput-object p3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->threadName:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    .line 59
    return-void
.end method

.method private notifyError()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->tag:Ljava/lang/String;

    const-string v1, "ERROR, backoff and consume any attempt left"

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->updateBackoffTime(Z)V

    .line 197
    return-void
.end method

.method private notifySuccess()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->tag:Ljava/lang/String;

    const-string v1, "SUCCESS, Exiting the loop"

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->updateBackoffTime(Z)V

    .line 205
    return-void
.end method

.method private updateBackoffTime(Z)V
    .locals 4
    .param p1, "error"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 180
    if-eqz p1, :cond_1

    .line 181
    iget-wide v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentBackoff:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->random:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x1388

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentBackoff:J

    .line 184
    :cond_0
    sget v0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->maxAttempt:I

    iget v1, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentAttempt:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->attemptsLeft:I

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_1
    iput-wide v2, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentBackoff:J

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->attemptsLeft:I

    goto :goto_0
.end method


# virtual methods
.method protected done()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 154
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    if-eqz v1, :cond_0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;->backgroundOperationsOver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    invoke-interface {v1, v3}, Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;->backgroundOperationsOver(Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v1, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    invoke-interface {v1, v3}, Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;->backgroundOperationsOver(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 63
    iget-object v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    if-nez v3, :cond_0

    .line 64
    invoke-virtual {p0, v7}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->set(Ljava/lang/Object;)V

    .line 145
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->threadName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->threadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->threadName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->threadName:Ljava/lang/String;

    .line 76
    .local v0, "actionName":Ljava/lang/String;
    :cond_2
    :goto_1
    iget v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentAttempt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentAttempt:I

    .line 78
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 79
    invoke-virtual {p0, v7}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    .end local v0    # "actionName":Ljava/lang/String;
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 83
    .restart local v0    # "actionName":Ljava/lang/String;
    :cond_4
    iget-wide v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentBackoff:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_5

    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sleeping for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentBackoff:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms before retrying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-wide v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentBackoff:J

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 88
    iget-wide v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentBackoff:J

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentBackoff:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_5
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    invoke-virtual {p0, v7}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e1":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->tag:Ljava/lang/String;

    const-string v4, "Thread interrupted: abort!"

    invoke-static {v3, v4}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iput v10, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->attemptsLeft:I

    .line 93
    invoke-virtual {p0, v7}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    .end local v2    # "e1":Ljava/lang/InterruptedException;
    :cond_6
    iget-object v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempt "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentAttempt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->maxAttempt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :try_start_1
    iget-object v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    invoke-interface {v3}, Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;->call()Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 110
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 126
    :catch_1
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->notifyError()V

    .line 131
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    iget-wide v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentBackoff:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_b

    .line 132
    iput v10, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->attemptsLeft:I

    .line 133
    iget-object v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    invoke-interface {v3}, Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 115
    :cond_8
    :try_start_2
    iget-object v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    invoke-interface {v3}, Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;->isFinishedWithError()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 116
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->notifyError()V

    .line 121
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 122
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 117
    :cond_a
    iget-object v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    invoke-interface {v3}, Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;->isFinishedWithSuccess()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 118
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->notifySuccess()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 136
    :cond_b
    sget v3, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->maxAttempt:I

    iget v4, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentAttempt:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->attemptsLeft:I

    .line 137
    iget-wide v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentBackoff:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_c

    iget v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentAttempt:I

    sget v4, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->maxAttempt:I

    .line 75
    if-lt v3, v4, :cond_2

    .line 139
    :cond_c
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 140
    invoke-virtual {p0, v7}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 144
    :cond_d
    iget-object v3, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->run:Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;

    invoke-interface {v3}, Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->set(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected runAndReset()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iput v2, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentAttempt:I

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->currentBackoff:J

    .line 172
    iput v2, p0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->attemptsLeft:I

    .line 173
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->runAndReset()Z

    move-result v0

    return v0
.end method
