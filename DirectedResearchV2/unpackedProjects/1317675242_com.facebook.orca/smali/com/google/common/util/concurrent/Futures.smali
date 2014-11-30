.class public final Lcom/google/common/util/concurrent/Futures;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->c()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/SettableFuture;->a(Ljava/lang/Object;)Z

    .line 202
    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)",
            "Lcom/google/common/util/concurrent/UninterruptibleFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    instance-of v0, p0, Lcom/google/common/util/concurrent/UninterruptibleFuture;

    if-eqz v0, :cond_0

    .line 64
    check-cast p0, Lcom/google/common/util/concurrent/UninterruptibleFuture;

    move-object v0, p0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/Futures$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$1;-><init>(Ljava/util/concurrent/Future;)V

    goto :goto_0
.end method
