.class public interface abstract Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;
.super Ljava/lang/Object;
.source "ICallableForAutoRetry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract backgroundOperationsOver(Ljava/lang/Object;)V
.end method

.method public abstract getResult()Ljava/lang/Object;
.end method

.method public abstract isFinishedWithError()Z
.end method

.method public abstract isFinishedWithSuccess()Z
.end method
