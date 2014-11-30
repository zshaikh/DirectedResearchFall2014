.class public abstract Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;
.super Ljava/lang/Object;
.source "AbstractCallableForAutoRetry.java"

# interfaces
.implements Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;


# instance fields
.field protected error:Z

.field protected internalResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;->internalResult:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;->error:Z

    .line 8
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;->internalResult:Ljava/lang/Object;

    return-object v0
.end method

.method public isFinishedWithError()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;->error:Z

    return v0
.end method

.method public isFinishedWithSuccess()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;->error:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
